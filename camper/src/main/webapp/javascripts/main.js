const createCard = () => {
    const container = document.querySelector('.second_container')
    const cardInfo = [
        {
            thumb: 'https://a0.muscache.com/im/pictures/eb9c7c6a-ee33-414a-b1ba-14e8860d59b3.jpg?im_w=480',
            title: '온라인 체험',
            descript: '세계 각지의 호스트가 진행하고 모두 함께 즐기는 독특한 액티비티'
        },
        {
            thumb: 'https://a0.muscache.com/im/pictures/15159c9c-9cf1-400e-b809-4e13f286fa38.jpg?im_w=480',
            title: '독특한 공간',
            descript: '단순한 숙소 이상의 특별함이 담긴 공간'
        },
        {
            thumb: 'https://a0.muscache.com/im/pictures/fdb46962-10c1-45fc-a228-d0b055411448.jpg?im_w=480',
            title: '집 전체',
            descript: '일행만을 위한 편안한 공간에서 친구 및 가족과 오붓한 시간을 보내세요.'
        }
    ]

    cardInfo.forEach(e => {
        const card = document.createElement('div');
        const addClass = document.createAttribute("class");
        addClass.value = "second_item";
        card.setAttributeNode(addClass);

        const thumb = makeThumbNode(e.thumb);
        const title = makeTitleNode(e.title);
        const descript = makeDescriptNode(e.descript);

        card.appendChild(thumb);
        card.appendChild(title);
        card.appendChild(descript);

        container.appendChild(card);
    })
}

const makeThumbNode = (thumb) => {
    const node = document.createElement('img');
    const addClass = document.createAttribute("class");
    const url = document.createAttribute("src");
    addClass.value = "item_thumb";
    url.value = thumb;
    node.setAttributeNode(addClass);
    node.setAttributeNode(url);
    return node;
}

const makeTitleNode = (title) => {
    const node = document.createElement('div');
    const addClass = document.createAttribute("class");
    addClass.value = "item_title";
    node.setAttributeNode(addClass);
    node.innerHTML = title;
    return node;
}

const makeDescriptNode = (descript) => {
    const node = document.createElement('p');
    const addClass = document.createAttribute("class");
    addClass.value = "item_descript";
    node.setAttributeNode(addClass);
    node.innerHTML = descript;
    return node;
}

createCard();