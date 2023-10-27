#include <SFML\Graphics.hpp>
#include <iostream>
#include<Windows.h>
#include<SFML/Audio.hpp>
#include<string>

int main() {
	sf::RenderWindow window(sf::VideoMode(1024, 512), "square fight!", sf::Style::Close | sf::Style::Titlebar | sf::Style::Resize);          //screen
	window.setFramerateLimit(60);

	int scorePlayer1 = 0;
	int scorePlayer2 = 0;
here:bool screenSolution = false;
	bool bullet1Shot = false;
	bool bullet1Exists = false;
	bool bullet2Shot = false;
	bool bullet2Exists = false;
	bool gameLoop = false;
	bool fpsBoost = false;
	bool player1Exists = true;
	bool player2Exists = true;
	int t = 0;
	int t2 = 0;
	int ticks = 0;

	sf::SoundBuffer Music;                                                                                          //playerMoveAudio
	Music.loadFromFile("100877__xythe__fight.wav");
	sf::Sound sound4;
	sound4.setBuffer(Music);
	sound4.play();
	sound4.setLoop(true);


	sf::SoundBuffer playerMoveAudio;                                                                                          //playerMoveAudio
	playerMoveAudio.loadFromFile("399196__spiceprogram__perc-bip.wav");
	sf::Sound sound3;


	sf::SoundBuffer bulletAudio;                                                                                          //bulletAudio
	bulletAudio.loadFromFile("376694__daleonfire__lazer.wav");
	sf::Sound sound1;

	sf::SoundBuffer bulletAudioHit;                                                                                          //bulletAudioHit
	bulletAudioHit.loadFromFile("138481__justinvoke__bullet-blood-4.wav");
	sf::Sound sound2;


	sf::Font font;
	font.loadFromFile("Font/PTC55F.ttf");
	sf::Text score;                                                                    //score
	score.setFont(font);
	score.setFillColor(sf::Color::Blue);
	score.setCharacterSize(24);
	score.setPosition(10.0f, 20.0f);
	score.setString("SCORE: ");


	sf::Text score2;                                                                    //score2
	score2.setFont(font);
	score2.setFillColor(sf::Color::Red);
	score2.setCharacterSize(24);
	score2.setPosition(924.0f, 20.0f);
	score2.setString("SCORE: ");


	sf::RectangleShape backround(sf::Vector2f(1024.0f, 512.0f));                                                    //backround
	sf::Texture backroundTexture;
	backroundTexture.loadFromFile("square_FIghts_2.png");
	backround.setTexture(&backroundTexture);

	sf::RectangleShape backround2(sf::Vector2f(1024.0f, 512.0f));                   // backround 2
	backround2.setFillColor(sf::Color::Black);

	sf::RectangleShape* player1 = new sf::RectangleShape(sf::Vector2f(50.0f, 50.0f));                               //player1
	player1->setSize(sf::Vector2f(100, 100));
	player1->setFillColor(sf::Color::Red);
	player1->setPosition(20.0f, 100.0f);


	sf::Vector2f position = player1->getPosition();
	position.x;
	position.y;



	sf::RectangleShape* player2 = new sf::RectangleShape(sf::Vector2f(50.0f, 50.0f));                          //start of player2
	player2->setSize(sf::Vector2f(100, 100));
	player2->setFillColor(sf::Color::Blue);
	player2->setPosition(820.0f, 100.0f);

	sf::RectangleShape* bullet = new sf::RectangleShape();                         //bullet
	bullet->setSize(sf::Vector2f(50.0f, 20.0f));
	bullet->setPosition(sf::Vector2f(200000000.0f, 200000000.0f));
	sf::Texture bulletTexture;
	bulletTexture.loadFromFile("bullet2.png");
	bullet->setTexture(&bulletTexture);

	sf::RectangleShape* bullet2 = new sf::RectangleShape();                                        //bullet2
	bullet2->setSize(sf::Vector2f(50.0f, 20.0f));
	bullet2->setPosition(sf::Vector2f(200000000.0f, 200000000.0f));
	sf::Texture bulletTexture2;
	bulletTexture2.loadFromFile("Bullet.png");
	bullet2->setTexture(&bulletTexture2);



	sf::Vector2f position2 = player2->getPosition();
	position2.x;
	position2.y;



	while (window.isOpen()) {

		sf::Event evnt;
		while (window.pollEvent(evnt)) {
			if (evnt.type == evnt.Closed) {
				window.close();

			}
		}
		if (sf::Keyboard::isKeyPressed(sf::Keyboard::Key::D)) {
			player1->move(8.0f, 0.0f);
			player1->move(0.0f, 0.0f);
			sound3.setBuffer(playerMoveAudio);
			sound3.play();
			sound3.stop();
			sound3.play();
		}
		if (sf::Keyboard::isKeyPressed(sf::Keyboard::Key::A)) {
			player1->move(-8.0f, 00.0f);
			player1->move(0.0f, 0.0f);
			sound3.setBuffer(playerMoveAudio);
			sound3.play();
			sound3.stop();
			sound3.play();
		}
		if (sf::Keyboard::isKeyPressed(sf::Keyboard::Key::S)) {
			player1->move(00.0f, 8.0f);
			player1->move(0.0f, 0.0f);
			sound3.setBuffer(playerMoveAudio);
			sound3.play();
			sound3.stop();
			sound3.play();
		}
		if (sf::Keyboard::isKeyPressed(sf::Keyboard::Key::W)) {
			player1->move(0.0f, -8.0f);
			player1->move(0.0f, 0.0f);
			sound3.setBuffer(playerMoveAudio);
			sound3.play();
			sound3.stop();
			sound3.play();
		}

		if (sf::Keyboard::isKeyPressed(sf::Keyboard::Key::Right)) {
			player2->move(8.0f, 0.0f);

			player2->move(0.0f, 0.0f);
			sound3.setBuffer(playerMoveAudio);
			sound3.play();
			sound3.stop();
			sound3.play();
		}
		if (sf::Keyboard::isKeyPressed(sf::Keyboard::Key::Left)) {
			player2->move(-8.0f, 00.0f);
			player2->move(0.0f, 0.0f);
			sound3.setBuffer(playerMoveAudio);
			sound3.play();
			sound3.stop();
			sound3.play();
		}
		if (sf::Keyboard::isKeyPressed(sf::Keyboard::Key::Down)) {
			player2->move(00.0f, 8.0f);
			player2->move(0.0f, 0.0f);
			sound3.setBuffer(playerMoveAudio);
			sound3.play();
			sound3.stop();
			sound3.play();
		}

		if (sf::Keyboard::isKeyPressed(sf::Keyboard::Key::Up)) {
			player2->move(0.0f, -8.0f);
			player2->move(0.0f, 0.0f);
			sound3.setBuffer(playerMoveAudio);
			sound3.play();
			sound3.stop();
			sound3.play();
		}
		if (sf::Keyboard::isKeyPressed(sf::Keyboard::Key::Space)) {
			screenSolution = true;

		}

		window.clear(sf::Color::Black);
		if (screenSolution) {
			window.draw(backround2);
			window.draw(score);
			window.draw(score2);

			if (sf::Keyboard::isKeyPressed(sf::Keyboard::Key::Q)) {
				bullet1Shot = true;
				bullet1Exists = true;
				bullet->setPosition(player1->getPosition());
				sound1.setBuffer(bulletAudio);
				sound1.play();
				sound1.stop();
				sound1.play();
			}
			if (sf::Keyboard::isKeyPressed(sf::Keyboard::Key::RControl)) {
				bullet2Shot = true;
				bullet2Exists = true;
				bullet2->setPosition(player2->getPosition());
				sound1.setBuffer(bulletAudio);
				sound1.play();
				sound1.stop();
				sound1.play();
			}

			if (bullet1Shot == true) { //Move bullet 1 when shot
				bullet->move(5.0f, 0.0f);
				bullet->move(0.0f, 0.0f);

			}
			if (bullet2Shot == true) { // move bullet 2 when shot
				bullet2->move(-5.0f, 0.0f);
				bullet2->move(0.0f, 0.0f);

			}

			if (bullet->getGlobalBounds().intersects(player2->getGlobalBounds()) && t == 0) { // if Bullet1 shot player 2
				t = 1;
				delete player2;
				player2Exists = false;
				bullet1Exists = false;
				gameLoop = true;
				scorePlayer1++;
				sound2.setBuffer(bulletAudioHit);
				sound2.play();
				sound2.stop();
				sound2.play();
			}

			if (bullet2->getGlobalBounds().intersects(player1->getGlobalBounds()) && t2 == 0) {
				t2 = 1;
				delete player1;
				player1Exists = false;
				bullet2Exists = false;
				gameLoop = true;
				scorePlayer2++;
				sound2.setBuffer(bulletAudioHit);
				sound2.play();
				sound2.stop();
				sound2.play();
			}

			if (player1Exists)
				window.draw(*player1);

			if (player2Exists)
				window.draw(*player2);

			if (bullet1Shot && bullet1Exists)
				window.draw(*bullet);

			if (bullet2Shot && bullet2Exists)
				window.draw(*bullet2);

			if (bullet->getPosition().x >= window.getSize().x - 10.0f) {
				bullet1Exists = false;
				bullet1Shot = false;

			}
			if (bullet2->getPosition().x <= 0.0f) {
				bullet2Exists = false;
				bullet2Shot = false;
			}
			if (gameLoop == true) {

			}
		}
		else {
			window.draw(backround);
		}

		window.display();

		if (player1Exists == false || player2Exists == false)
		{
			ticks++;
		}

		if (player1Exists == false && ticks == 60)
		{
			ticks = 0;
			goto here;
		}
		if (player2Exists == false && ticks == 60)
		{
			ticks = 0;
			goto here;
		}
		score.setString("Score: " + std::to_string(scorePlayer1));
		score2.setString("Score: " + std::to_string(scorePlayer2));
	}
}


