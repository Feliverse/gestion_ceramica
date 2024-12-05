// Configure your import map in config/importmap.rb. Read more: https://github.com/rails/importmap-rails
import "@hotwired/turbo-rails"
import "controllers"

// Importa Bootstrap y su dependencia Popper.js 
import "bootstrap" 
import "@popperjs/core" 
// Importa jQuery 
import $ from "jquery" 
window.jQuery = $ 
window.$ = $  