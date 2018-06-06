function destroyTweet() {
  const destroyTweets = document.querySelectorAll('.icon-destroy');
  destroyTweets.forEach((tweet) => {
    tweet.addEventListener('click', (event) => {
      tweet.parentElement.parentElement.remove();
    })
  })
}

export { destroyTweet }
