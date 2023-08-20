import pygame
import sys

# Ініціалізація Pygame
pygame.init()

# Розміри вікна
width = 800
height = 600

# Кольори
white = (255, 255, 255)
black = (0, 0, 0)

# Створення вікна
screen = pygame.display.set_mode((width, height))
pygame.display.set_caption("Головне меню")

# Шрифт
font = pygame.font.Font(None, 36)

# Функція для відображення тексту на екрані
def draw_text(text, font, color, x, y):
    text_surface = font.render(text, True, color)
    text_rect = text_surface.get_rect()
    text_rect.center = (x, y)
    screen.blit(text_surface, text_rect)

# Основний цикл програми
while True:
    for event in pygame.event.get():
        if event.type == pygame.QUIT:
            pygame.quit()
            sys.exit()

    screen.fill(white)
    
    # Відображення кнопок
    button_width = 200
    button_height = 50
    button_x = width // 2
    button_y1 = height // 2 - 50
    button_y2 = height // 2 + 50
    
    pygame.draw.rect(screen, black, (button_x - button_width // 2, button_y1 - button_height // 2, button_width, button_height))
    pygame.draw.rect(screen, black, (button_x - button_width // 2, button_y2 - button_height // 2, button_width, button_height))
    
    draw_text("Гра", font, white, button_x, button_y1)
    draw_text("Вихід", font, white, button_x, button_y2)
    
    pygame.display.flip()
