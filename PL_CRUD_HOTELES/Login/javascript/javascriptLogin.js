function createParticles() {
    const particlesContainer = document.getElementById('particles');
    const particleCount = 15;

    for (let i = 0; i < particleCount; i++) {
        const particle = document.createElement('div');
        particle.classList.add('particle');
        
        const size = Math.random() * 60 + 20;
        const startX = Math.random() * 100;
        const delay = Math.random() * 15;
        
        particle.style.width = `${size}px`;
        particle.style.height = `${size}px`;
        particle.style.left = `${startX}%`;
        particle.style.animationDelay = `${delay}s`;
        
        particlesContainer.appendChild(particle);
    }
}

const togglePassword = document.getElementById('togglePassword');
const passwordInput = document.getElementById('password');

togglePassword.addEventListener('click', function() {
    const type = passwordInput.getAttribute('type') === 'password' ? 'text' : 'password';
    passwordInput.setAttribute('type', type);
    
    this.classList.toggle('fa-eye');
    this.classList.toggle('fa-eye-slash');
});

function showMessage(text, type) {
    const message = document.getElementById('message');
    const messageText = document.getElementById('messageText');
    const icon = message.querySelector('i');
    
    messageText.textContent = text;
    message.className = `message ${type}`;
    
    if (type === 'error') {
        icon.className = 'fas fa-exclamation-circle';
    } else if (type === 'success') {
        icon.className = 'fas fa-check-circle';
    }
    
    message.style.display = 'flex';
    
    setTimeout(() => {
        message.style.display = 'none';
    }, 5000);
}

function validateEmail(email) {
    const regex = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;
    return regex.test(email);
}

const loginForm = document.getElementById('loginForm');
const loginBtn = document.getElementById('loginBtn');

const inputs = document.querySelectorAll('.input-group input');

inputs.forEach(input => {
    input.addEventListener('focus', function() {
        this.parentElement.parentElement.style.transform = 'scale(1.02)';
        this.parentElement.parentElement.style.transition = 'transform 0.3s';
    });
    
    input.addEventListener('blur', function() {
        this.parentElement.parentElement.style.transform = 'scale(1)';
    });
});

createParticles();

const forgotPassword = document.querySelector('.forgot-password');

forgotPassword.addEventListener('click', function(e) {
    e.preventDefault();
    showMessage('Se ha enviado un enlace de recuperación a tu correo', 'success');
});

let isSubmitting = false;

loginForm.addEventListener('submit', function(e) {
    if (isSubmitting) {
        e.preventDefault();
        return;
    }
    isSubmitting = true;
    
    setTimeout(() => {
        isSubmitting = false;
    }, 2000);
});