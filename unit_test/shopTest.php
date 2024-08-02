<?php

use PHPUnit\Framework\TestCase;

class ShopTest extends TestCase
{
    protected $db;
    protected $shop;

    protected function setUp(): void
    {
      
        $this->db = $this->createMock(mysqli::class);

        
        $_SESSION = ['user_id' => 1];
    }

    public function testAddToCart()
    {
       
        $checkCartQuery = $this->createMock(mysqli_result::class);
        $checkCartQuery->expects($this->any())
            ->method('num_rows')
            ->willReturn(0);

      
        $this->db->expects($this->any())
            ->method('query')
            ->willReturnOnConsecutiveCalls($checkCartQuery, true);

        
        $_POST['add_to_cart'] = true;
        $_POST['product_name'] = 'Test Product';
        $_POST['product_price'] = '10';
        $_POST['product_image'] = 'test_image.jpg';
        $_POST['product_quantity'] = '1';

        
        include 'config.php'; 
        include 'shop.php';

  
        $this->assertContains('product added to cart!', $message);
    }

    protected function tearDown(): void
    {
        unset($_SESSION);
        unset($_POST);
    }
}
