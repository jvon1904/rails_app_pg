
const forms = document.querySelectorAll('#edit-comment-form');
const links = document.querySelectorAll('.edit-link');
let x = 1
for (let i = 0; i < links.length; i++) {
    // if (x == 1) {
        links[i].addEventListener('click', ()=>{
          
                forms[i].classList.toggle('hide');
            //     forms[i].classList.add('show');
            //     x *= -1
            //     console.log(forms[i].classList);
            // } else {
            //     forms[i].classList.remove('show');
            //     forms[i].classList.add('hide');
            //     x *= -1
            });
    }