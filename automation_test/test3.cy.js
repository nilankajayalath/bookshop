

it('Google Search',() => {
    cy.visit('http://localhost/project/login.php')
    cy.get('[type="email"]').type('kalindu1@gmail.com')
    cy.get('[type="password"]').type('12345')
    cy.get('.btn').click()


    
    cy.get('.navbar > [href="contact.php"]').click()
    cy.get('[type="text"]').type('kalindu')
    cy.get('[type="email"]').type('Kalindu1@gmail.com')
    cy.get('[type="number"]').type('222')
    cy.get('textarea.box').type('hello')
    cy.get('.btn').click()


    
    

})