<?php

class User
{
  private ?int $id;
  private string $name;
  private string $email;

  public function __construct(string $name, string $email)
  {
    $this->name = $name;
    $this->email = $email;
    $this->id = null;
  }

  /**
   * Getters
   */

  public function getId(): int
  {
    return $this->id;
  }

  public function getName(): string
  {
    return $this->name;
  }

  public function getEmail(): string
  {
    return $this->email;
  }

  /**
   * Setters
   */

  public function setId(int $id): void
  {
    $this->id = $id;
  }

  /**
   * Static methods
   */

  static public function getById(int $id): User
  {
    // quick and dirty database connection
    $dbh = new PDO('mysql:host=localhost:3306;dbname=tp_blog', 'root', '');

    // quick and dirty query
    $sql = 'SELECT username, email FROM user WHERE id_user=:id';
    $stmt = $dbh->prepare($sql);
    $stmt->execute(['id' => $id]);
    $userData = $stmt->fetch(PDO::FETCH_ASSOC);
    // var_dump($userData);
    $user = new User($userData['username'], $userData['email']);
    var_dump($user);
    return $user;
  }
}
