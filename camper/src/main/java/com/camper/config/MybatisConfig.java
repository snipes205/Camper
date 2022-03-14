package com.camper.config;

import javax.sql.DataSource;

import org.apache.ibatis.session.SqlSessionFactory;
import org.mybatis.spring.SqlSessionFactoryBean;
import org.mybatis.spring.SqlSessionTemplate;
import org.mybatis.spring.annotation.MapperScan;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.core.io.support.PathMatchingResourcePatternResolver;
import org.springframework.transaction.annotation.EnableTransactionManagement;

// myBatis에서 제공하는 SqlSessionFacatory 메서드를 사용하기 위한 설정파일이다
// myBatis 설정은 java 파일 또는 xml로 설정할 수 있는데 그냥 java 파일로 설정했다.
// SqlSessionFactory를 사용하지 않고 mapper query를 날릴 경우 insert, delete, update 경우 리턴값을 받을 수 없어 성공 여부를 알 수 없다


@Configuration
@MapperScan(basePackages = "com.camper.mapper")
@EnableTransactionManagement
public class MybatisConfig {

		@Bean
		public SqlSessionFactory sqlSessionFactory(DataSource dataSource) throws Exception {
			final SqlSessionFactoryBean sessionFactory = new SqlSessionFactoryBean();
			sessionFactory.setDataSource(dataSource);
			PathMatchingResourcePatternResolver resolver = new PathMatchingResourcePatternResolver();
			sessionFactory.setMapperLocations(resolver.getResources("classpath:mybatis/*.xml"));
			return sessionFactory.getObject();
		}

		@Bean
		public SqlSessionTemplate sqlSessionTemplate(SqlSessionFactory sqlSessionFactory) throws Exception {
			final SqlSessionTemplate sqlSessionTemplate = new SqlSessionTemplate(sqlSessionFactory);
			return sqlSessionTemplate;
		}

}
