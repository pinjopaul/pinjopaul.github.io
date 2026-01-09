// Mobile menu toggle
document.addEventListener('DOMContentLoaded', function() {
  const hamburger = document.querySelector('.hamburger');
  const navLinks = document.querySelector('.nav-links');
  const overlay = document.querySelector('.overlay');
  const navLinksItems = document.querySelectorAll('.nav-links a');

  function toggleMenu() {
    navLinks.classList.toggle('open');
  }

  function closeMenu() {
    navLinks.classList.remove('open');
  }

  if (hamburger) {
    hamburger.addEventListener('click', toggleMenu);
  }

  if (overlay) {
    overlay.addEventListener('click', closeMenu);
  }

  navLinksItems.forEach(link => {
    link.addEventListener('click', closeMenu);
  });

  // Set active nav link based on current page
  const currentPage = window.location.pathname.split('/').pop() || 'index.html';
  navLinksItems.forEach(link => {
    const linkPage = link.getAttribute('href');
    if (linkPage === currentPage || (currentPage === '' && linkPage === 'index.html')) {
      link.classList.add('active');
    }
  });
});

// Contact form handling
function handleContactSubmit(event) {
  event.preventDefault();
  
  const formData = {
    name: document.getElementById('name').value,
    email: document.getElementById('email').value,
    company: document.getElementById('company').value,
    role: document.getElementById('role').value,
    needs: document.getElementById('needs').value
  };

  const subject = encodeURIComponent(`Demo Request from ${formData.name} at ${formData.company}`);
  const body = encodeURIComponent(
    `Name: ${formData.name}\n` +
    `Email: ${formData.email}\n` +
    `Company: ${formData.company}\n` +
    `Role: ${formData.role}\n\n` +
    `AI Goals:\n${formData.needs}`
  );
  
  window.location.href = `mailto:support@doingnow.ai?subject=${subject}&body=${body}`;
  
  const statusDiv = document.getElementById('form-status');
  if (statusDiv) {
    statusDiv.className = 'form-status success';
    statusDiv.textContent = 'Opening your email client to send the request...';
  }
}
