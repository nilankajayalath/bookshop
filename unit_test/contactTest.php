<?php

use PHPUnit\Framework\TestCase;

class ContactTest extends TestCase
{
    protected $db;

    protected function setUp(): void
    {
       
        $this->db = $this->createMock(mysqli::class);

        $_SESSION = ['user_id' => 1];
    }

    public function testSendMessage()
    {
   
        $selectMessageQuery = $this->createMock(mysqli_result::class);
        $selectMessageQuery->expects($this->any())
            ->method('num_rows')
            ->willReturn(0);

       
        $this->db->expects($this->any())
            ->method('query')
            ->willReturnOnConsecutiveCalls($selectMessageQuery, true);

        // Simulate POST data
        $_POST['send'] = true;
        $_POST['name'] = 'John Doe';
        $_POST['email'] = 'john@example.com';
        $_POST['number'] = '1234567890';
        $_POST['message'] = 'Hello, this is a test message.';

      
        include 'config.php'; 
        include 'contact.php';


        $this->assertContains('message sent successfully!', $message);
    }

    protected function tearDown(): void
    {
        unset($_SESSION);
        unset($_POST);
    }
}
