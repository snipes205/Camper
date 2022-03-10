function modalHandler(list) {
    // 모달창
    list.forEach(className => {
        addModalListener(className)
    });
}

function addModalListener (className){
    const openBtn = document.getElementById(className + 'Btn')
    const modal = document.querySelector("." + className);
    const overlay = modal.querySelector(".modal_overlay");
    const closeBtn = modal.querySelector("button");

    const openModal = () => {
        modal.classList.remove('hidden');
    }
    const closeModal = () => {
        modal.classList.add("hidden");
    }

    closeBtn.addEventListener("click", closeModal);
    overlay.addEventListener("click", closeModal)
    openBtn.addEventListener("click", openModal);
}

export { addModalListener, modalHandler};