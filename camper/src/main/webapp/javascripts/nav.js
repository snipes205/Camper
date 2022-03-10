const burgerMenu = document.querySelector('.burger_menu');
const menu = document.querySelector('.tab_menu_container');

burgerMenu.addEventListener('click', () => {
        menu.classList.toggle('active');
});