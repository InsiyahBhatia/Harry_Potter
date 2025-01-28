# Harry Potter Flutter App

A Flutter application that provides details about Harry Potter characters and generates random spells. This project showcases the usage of Flutter widgets, HTTP API calls, and a dynamic user interface.

---

## Features

1. **Character Details**:
   - Fetches and displays details about Harry Potter characters, such as names, nicknames, houses, and images.
   - Supports multiple languages for fetching character data.

2. **Random Spell Generator**:
   - Generates and displays a random spell from the Harry Potter universe.
   - Provides the name of the spell and its use.

3. **Dynamic UI**:
   - Light and dark mode themes based on the device's brightness settings.
   - Grid-based layout for character cards.
   - Language selection screen for changing character data language.

---

## Screens

1. **Home Screen**:
   - Displays a grid of Harry Potter character cards.
   - Clicking a character card navigates to a detail page.

2. **Spells Screen**:
   - Displays a randomly generated spell with its name and use.
   - A button to generate a new random spell.

3. **Language Screen**:
   - Allows users to select a language for character data.

---

## Project Structure

- `main.dart`: Entry point of the application.
- `character_model.dart`: Model for handling character data.
- `character_detail.dart`: Screen for displaying character details.
- `spells_model.dart`: Model for handling spells data.
- `language_screen.dart`: Screen for language selection.
- `util.dart`: Utility functions and configurations.
- `theme.dart`: Theme customization for light and dark modes.

---

## API Endpoints

The app uses the [Harry Potter API](https://potterapi-fedeperin.vercel.app/) to fetch data:
- Characters: `https://potterapi-fedeperin.vercel.app/{language}/characters`
- Random Spell: `https://potterapi-fedeperin.vercel.app/en/spells/random`

---

## How to Run the Project

1. **Clone the Repository**:
   ```bash
   git clone https://github.com/your-repo/harry-potter-app.git
   cd harry-potter-app


