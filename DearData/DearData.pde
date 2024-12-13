// Constants
final int radius = 250; // The radius of the pie chart
final int barWidth = 10; // Width of each bar in the wins/losses bar chart
final int achievementBarWidth = 100; // Width of the achievements progress bar

Game[] games; // Array to store the different games data
int currentGame = 0; // Index to keep track of the current game being displayed

void setup() {
  size(700, 600); // Set the window size
  games = new Game[5]; // Initialise the games array with 4 slots

  // Data for four games
  // Each game data consists of: Game name, Wins, Losses, Event frequencies [found items, leveled up, progressed], Achievements earned, Total achievements
  games[0] = new Game("CS2", 480, 189, new int[]{45, 4, 9}, 1, 1);
  games[1] = new Game("Rocket League", 762, 537, new int[]{80, 4, 5}, 58, 88);
  games[2] = new Game("Valorant", 426, 366, new int[]{5, 100, 7}, 0, 0);
  games[3] = new Game("Overwatch", 454, 210, new int[]{5, 42, 5}, 19, 164);
  games[4] = new Game("League of Legends", 124, 45, new int[]{7, 12, 4}, 0, 0);
}

void draw() {
  background(200); // Set the background color to light grey
  games[currentGame].display(); // Display the current game data
}

void keyPressed() {
  // Cycle through games using left/right arrows
  if (keyCode == RIGHT) {
    currentGame = (currentGame + 1) % games.length; // Move to the next game
  } else if (keyCode == LEFT) {
    currentGame = (currentGame - 1 + games.length) % games.length; // Move to the previous game
  }
}

class Game {
  String name; // The name of the game
  int wins, losses; // Number of wins and losses in the game
  int[] eventFrequencies; // Array storing frequencies of events [found items, leveled up, progressed]
  int achievementsEarned, totalAchievements; // Number of achievements earned and total achievements in the game
  String hoverText = ""; // Text to display when the user hovers over the pie chart sections

  // Constructor to initialise game data
  Game(String name, int wins, int losses, int[] eventFrequencies, int achievementsEarned, int totalAchievements) {
    this.name = name;
    this.wins = wins;
    this.losses = losses;
    this.eventFrequencies = eventFrequencies;
    this.achievementsEarned = achievementsEarned;
    this.totalAchievements = totalAchievements;
  }

  void display() {
    // Initial setup for displaying data
    textAlign(CENTER, CENTER); // Set the text alignment to center

    // Display the title
    fill(50); // Set fill color to dark grey
    textSize(24); // Set text size to 24 for the title
    text("Game Data Visualisation", width / 2, 30); // Draw the title in the center of the top

    // Display the game name
    fill(50); // Set fill color to dark grey
    textSize(20); // Set text size to 20 for the game name
    text(name, width / 2, 80); // Draw the game name in the center

    // Draw the wins vs losses bar chart
    drawWinLossBar();

    // Draw the event frequency pie chart
    drawEventFrequencyPieChart();

    // Draw the achievements progress bar below the pie chart
    drawAchievementsProgress(500);

    // Display hover text when the mouse is over a section of the pie chart
    if (!hoverText.isEmpty()) {
      fill(0); // Set fill color to black for the hover text
      text(hoverText, width / 2, 500); // Display the hover text below the pie chart
    }
  }

  void drawWinLossBar() {
    // Set maximum bar width
    int maxBarWidth = 400; // Maximum width of the entire bar chart
    // Calculate the total number of wins and losses
    int totalGames = wins + losses;
    // Scale the width of the bars based on the maximum bar width
    float scaledWins = map(wins, 0, totalGames, 0, maxBarWidth);
    float scaledLosses = map(losses, 0, totalGames, 0, maxBarWidth);
    textSize(14); // Set text size to 14 for labels
    float startX = width / 2 - (scaledWins + scaledLosses) / 2; // Calculate the starting X position to center the bars
    fill(100, 200, 100); // Set fill color to green for wins
    rect(startX, 150, scaledWins, 30); // Draw the wins bar
    fill(200, 100, 100); // Set fill color to red for losses
    rect(startX + scaledWins, 150, scaledLosses, 30); // Draw the losses bar
    fill(50); // Set fill color to dark grey for text
    text("Wins: " + wins, startX + scaledWins / 2, 140); // Display the number of wins
    text("Losses: " + losses, startX + scaledWins + scaledLosses / 2, 140); // Display the number of losses
  }

  void drawEventFrequencyPieChart() {
    // Draw a pie chart representing event frequencies
    float totalEvents = eventFrequencies[0] + eventFrequencies[1] + eventFrequencies[2]; // Total number of events
    float angleStart = 0; // Starting angle for drawing pie chart sections
    hoverText = ""; // Clear hoverText at the start of drawing the pie chart
    for (int i = 0; i < eventFrequencies.length; i++) {
      // Loop through the event frequencies to draw each section of the pie chart
      float angleEnd = map(eventFrequencies[i], 0, totalEvents, 0, 360); // Map frequency to angle
      fill(100 + i * 50, 150, 200); // Set fill color based on the event index
      arc(width / 2, 350, radius, radius, radians(angleStart), radians(angleStart + angleEnd), PIE); // Draw the pie chart section
      // Check if the mouse is hovering over the arc section
      if (isMouseInArc(width / 2, 350, radius, radians(angleStart), radians(angleStart + angleEnd))) {
        hoverText = String.format("%s: %.1f%%", getEventName(i), eventFrequencies[i] / (float) totalEvents * 100); // Set hover text
      }
      angleStart += angleEnd; // Update the starting angle for the next section
    }
  }

  void drawAchievementsProgress(float yPosition) {
    // Draw the achievements progress bar
    float ratio = achievementsEarned / (float) totalAchievements; // Calculate the progress ratio
    fill(50); // Set fill color to dark grey
    text("Achievements", 600, yPosition - 50); // Display the achievements label
    fill(200); // Set fill color to light grey for the background of the progress bar
    rect(550, yPosition, achievementBarWidth, 20); // Draw the background of the progress bar
    fill(100, 200, 100); // Set fill color to green for the progress bar
    rect(550, yPosition, achievementBarWidth * ratio, 20); // Draw the progress bar based on the ratio
    fill(50); // Set fill color to dark grey for the text
    text(achievementsEarned + "/" + totalAchievements, 600, yPosition + 30); // Display the progress text (e.g., 5/10)
  }

  boolean isMouseInArc(float centerX, float centerY, float radius, float startAngle, float endAngle) {
    // Check if the mouse is inside a specific arc (section of the pie chart)
    float differenceX = mouseX - centerX; // Calculate the horizontal distance from the center of the arc
    float differenceY = mouseY - centerY; // Calculate the vertical distance from the center of the arc
    float distanceFromCenter = sqrt(differenceX * differenceX + differenceY * differenceY); // Calculate the distance from the center to the mouse
    if (distanceFromCenter > radius / 2) return false; // Return false if the mouse is outside the pie chart radius

    float angleToMouse = atan2(differenceY, differenceX); // Calculate the angle of the mouse relative to the center
    if (angleToMouse < 0) angleToMouse += TWO_PI; // Ensure the angle is positive

    // Handle arc wrapping around 360 degrees
    if (startAngle < endAngle) {
      return angleToMouse >= startAngle && angleToMouse <= endAngle; // Check if the mouse is within the arcs angle range
    } else {
      return angleToMouse >= startAngle || angleToMouse <= endAngle; // Check if the angle wraps around
    }
  }

  String getEventName(int index) {
    // Return the name of the event based on its index
    switch (index) {
      case 0: return "Found Items"; // Event 0: Found Items
      case 1: return "Leveled Up"; // Event 1: Leveled Up
      case 2: return "Progressed"; // Event 2: Progressed
      default: return "Unknown"; // Default case
    }
  }
}
