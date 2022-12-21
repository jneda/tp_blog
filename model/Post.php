<?php

/**
 * Blog post object
 */
class Post
{
  private int $id;
  private string $title;
  private string $content;
  private string $date;
  private User $author;
  private string $image;

  public function __construct(
    int $id,
    string $title,
    string $content,
    string $date,
    User $author,
    string $image
  ) {
    $this->id = $id;
    $this->title = $title;
    $this->content = $content;
    $this->date = $date;
    $this->author = $author;
    $this->image = $image;
  }

  /**
   * Getters
   */

  public function getId(): int
  {
    return $this->id;
  }

  public function getTitle(): string
  {
    return $this->title;
  }

  public function getContent(): string
  {
    return $this->content;
  }

  public function getDate(): string
  {
    return $this->date;
  }

  public function getauthor(): User
  {
    return $this->author;
  }

  public function getImage(): string
  {
    return $this->image;
  }

  /**
   * Static function used to fetch all posts from database
   */

  static public function fetchAll(): array
  {
    // quick and dirty database connection
    $dbh = new PDO('mysql:host=localhost:3306;dbname=tp_blog', 'root', '');

    // quick and dirty query
    $sql = 'SELECT * FROM post';
    $stmt = $dbh->prepare($sql);
    $stmt->execute();
    $postsData = $stmt->fetchAll(PDO::FETCH_ASSOC);

    // build Post objects
    $posts = [];

    foreach($postsData as $postData) {
      $post = new Post(
        $postData['id_post'],
        $postData['title'],
        $postData['content'],
        $postData['date'],
        User::getById($postData['id_author']),
        $postData['image']
      );
      $posts[] = $post;
    }

    return $posts;
  }
}
