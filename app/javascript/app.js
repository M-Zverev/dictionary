document.addEventListener('DOMContentLoaded', function () {
  const dictionaryList = document.getElementById('dictionary-list');
  const addDictionaryForm = document.getElementById('add-dictionary-form');
  const wordList = document.getElementById('word-list');
  const wordTableBody = document.querySelector('#word-table tbody');
  const dictionaryTitle = document.getElementById('dictionary-title');
  const addWordForm = document.getElementById('add-word-form');

  addDictionaryForm.addEventListener('submit', function (event) {
      event.preventDefault();
      const dictionaryNameInput = document.getElementById('dictionary-name');
      const dictionaryName = dictionaryNameInput.value;

      addDictionary(dictionaryName);
      dictionaryNameInput.value = '';
  });

  dictionaryList.addEventListener('click', function (event) {
      const target = event.target;
      if (target.tagName === 'LI') {
          const dictionaryName = target.textContent;
          showWordList(dictionaryName);
      }
  });

  addWordForm.addEventListener('submit', function (event) {
      event.preventDefault();

      const englishWordInput = document.getElementById('english-word');
      const translationInput = document.getElementById('translation');
      const transcriptionInput = document.getElementById('transcription');

      const englishWord = englishWordInput.value;
      const translation = translationInput.value;
      const transcription = transcriptionInput.value || '';

      addWord(englishWord, translation, transcription);

      englishWordInput.value = '';
      translationInput.value = '';
      transcriptionInput.value = '';
  });

  function addDictionary(dictionaryName) {
      const listItem = document.createElement('li');
      listItem.textContent = dictionaryName;
      dictionaryList.appendChild(listItem);
  }

  function showWordList(dictionaryName) {

      const words = [];

      wordTableBody.innerHTML = '';

      words.forEach(word => {
          const row = document.createElement('tr');
          row.innerHTML = `
              <td>${word.english}</td>
              <td>${word.translation}</td>
              <td>${word.transcription}</td>
          `;
          wordTableBody.appendChild(row);
      });

      dictionaryTitle.textContent = `Слова в словаре "${dictionaryName}"`;
      wordList.style.display = 'block';
  }

  function addWord(englishWord, translation, transcription) {
      const row = document.createElement('tr');
      row.innerHTML = `
          <td>${englishWord}</td>
          <td>${translation}</td>
          <td>${transcription}</td>
      `;
      wordTableBody.appendChild(row);
  }
});
