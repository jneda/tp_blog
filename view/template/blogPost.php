<article class="media mt-3">
  <!-- <figure class="media-left">
    <p class="image is-64x64">
      <img src="https://bulma.io/images/placeholders/128x128.png">
    </p>
  </figure> -->
  <div class="media-content">
    <h2 class=" title is-4"><?= $post->getTitle() ?></h2>
    <figure class="image">
      <img src="<?= $post->getImage() ?>" alt="image">
    </figure>
    <div class="content">
      <p class="author">
        <strong><?= $post->getAuthorId() ?></strong> <small>@johnsmith</small> <small class="datetime"><?= $post->getDate() ?></small>
      </p>
      <p class="post-content is-size-5">
        <?= $post->getContent() ?>
      </p>
    </div>

    <nav class="level is-mobile">
      <div class="level-left">
        <a class="level-item">
          <span class="icon is-small"><i class="fas fa-reply"></i></span>
        </a>
        <a class="level-item">
          <span class="icon is-small"><i class="fas fa-retweet"></i></span>
        </a>
        <a class="level-item">
          <span class="icon is-small"><i class="fas fa-heart"></i></span>
        </a>
      </div>
    </nav>
  </div>
  <!-- <div class="media-right">
    <button class="delete"></button>
  </div> -->
</article>