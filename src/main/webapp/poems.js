let poemsTableEl;
let poemsTableBodyEl;

function onPoemClicked() {
    const poemId = this.dataset.poemId;

    const params = new URLSearchParams();
    params.append('id', poemId);

    const xhr = new XMLHttpRequest();
    xhr.addEventListener('load', onPoemResponse);
    xhr.addEventListener('error', onNetworkError);
    xhr.open('GET', 'protected/poem?' + params.toString());
    xhr.send();
}

function onPoemsLoad(poems) {
    poemsTableEl = document.getElementById('poems');
    poemsTableBodyEl = poemsTableEl.querySelector('tbody');

    appendPoems(poems);
}

function onPoemsResponse() {
    if (this.status === OK) {
        showContents(['poems-content', 'back-to-profile-content', 'logout-content']);
        onPoemsLoad(JSON.parse(this.responseText));
    } else {
        onOtherResponse(poemsContentDivEl, this);
    }
}

function appendPoem(poem) {
    const aEl = document.createElement('a');
    aEl.textContent = poem.title;
    aEl.href = 'javascript:void(0);';
    aEl.dataset.poemId = poem.id;
    aEl.addEventListener('click', onPoemClicked);

    const trEl = document.createElement('tr');

    trEl.appendChild(aEl);
    poemsTableBodyEl.appendChild(trEl);
}

function appendPoems(poems) {
    removeAllChildren(poemsTableBodyEl);

    for (let i = 0; i < poems.length; i++) {
        const poem = poems[i];
        appendPoem(poem);
    }
}
