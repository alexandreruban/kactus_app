function createTweet() {
  const saveTweets = document.querySelectorAll('.icon-save');
  saveTweets.forEach((tweet) => {
    tweet.addEventListener('click', (event) => {
      const username = tweet.parentElement.parentElement.firstElementChild.innerText
      const content = tweet.parentElement.parentElement.children[1].innerText
      const published_date = tweet.parentElement.parentElement.children[2].innerText
      fetch("http://localhost:3000/tweets", {
        method: "POST",
        headers: {
          "Content-Type": "application/json"
        },
        body: JSON.stringify({
          username: username,
          content: content,
          published_date: published_date
         })
       })
    })
  })
}

export { createTweet }
