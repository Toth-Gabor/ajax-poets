let poemId;

function onPoemResponse() {
    if (this.status === OK) {
        showContents(['poem-content', 'back-to-profile-content', 'logout-content']);
        onPoemLoad(JSON.parse(this.responseText));
    } else {
        onOtherResponse(poemContentDivEl, this);
    }
}
function onPoemLoad(poemDto) {
    poemId = poemDto.poem.id;

    const poemIdSpanEl = document.getElementById('poem-id');
    const poemTitleSpanEl = document.getElementById('poem-title');
    const poemContentSpanEl = document.getElementById('poem-body');

    poemIdSpanEl.textContent = poemDto.poem.id;
    poemTitleSpanEl.textContent = poemDto.poem.title;
    poemContentSpanEl.textContent = poemDto.poem.content;

}
