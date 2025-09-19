% The dialogue and character will be heavily inspired by the game, "Help Me Remember, Satori-sama!".
% It will be for the sake of my self interest and motivation.

% Introduction
disp("Okuu seems to have forgotten what number she was thinking!");
disp("Your task is to help her remember that number.");

% Replay stuff (this stuff is for the very end of the code after beating it)
retry = "n";
retry = "y";
while strcmp(retry, "y") == 1;

% Difficulty selection options
disp("Select Mode: ");
printf("  \033[92m Easy Mode \033[0m- For beginners \n");
printf("  \033[34m Normal Mode \033[0m- For average players \n");
printf("  \033[31m Hard Mode \033[0m- For expert players \n");
printf("  \033[35m Lunatic Mode \033[0m- For lunatics \n");
% I had to google how to color code the text

% Difficulty range stuff alongside dialogue unique to the difficulty chosen
mode = input("Select: ", 's');
if strcmp(mode, "Easy Mode") == 1
  max_num = 10;
  disp("Okuu: Please help me remember! I can't remember what number I was thinking... It was around 1-10.")
elseif strcmp(mode, "Normal Mode") == 1
  max_num = 50;
  disp("Okuu: Please help me remember! I can't remember what number I was thinking... It was around 1-50.")
elseif strcmp(mode, "Hard Mode") == 1
  max_num = 100;
  disp("Okuu: Please help me remember! I can't remember what number I was thinking... It was around 1-100.")
elseif strcmp(mode, "Lunatic Mode") == 1
  max_num = 1000;
  disp("Okuu: Please help me remember! I can't remember what number I was thinking... It was around 1-1000.")
end

% RNG aka the infamous Random Number Generator!!!!
RNG = randi(max_num);
attempt = 0;
guess = 0;

% Now the stuff for guessing to work
while guess != RNG
  attempt += 1
  guess = input("The number is... ");
  if guess > RNG
    disp("Okuu: Hmm... I don't think so. It's too high.")
  elseif guess < RNG
    disp("Okuu: Hmm... I don't think so. It's too low.")
  elseif guess == RNG
    disp("Okuu: Wow, that's right! You're amazing!")
    break;
  endif
endwhile

% A replay thingy because I got too lazy clicking the run again after testing
retry = input("Replay? (y/n): ", 's');
if strcmp(retry, "n") == 1;
  printf("\033[31mThe game has ended. \033[0m\n");
  end
end
