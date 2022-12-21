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
  private int $authorId;
  private string $image;

  public function __construct(
    int $id,
    string $title,
    string $content,
    string $date,
    int $authorId,
    string $image
  ) {
    $this->id = $id;
    $this->title = $title;
    $this->content = $content;
    $this->date = $date;
    $this->authorId = $authorId;
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

  public function getAuthorId(): int
  {
    return $this->authorId;
  }

  public function getImage(): string
  {
    return $this->image;
  }
}
