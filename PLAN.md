# SideQuests Implementation Plan

This document outlines the roadmap for developing the SideQuests app using Clean Architecture and the Power Stack (Riverpod, AutoRoute, Hive, FlexColorScheme).

## Phase 1: Foundational Logic

_Goal: Build the core UI and logic using local storage before connecting a backend._

- [x] **1.1 Define Domain Entities**
  - Create `SideQuest`, `Participant`, and `AppUser` entities using `Freezed`.
  - `SideQuest` fields: `id`, `title`, `description?`, `deadline`, `inviteCode`, `creatorId`, `createdAt`, `List<Participant> participants`.
  - `Participant` fields: `userId`, `displayName`, `isCompleted`, `completedAt`, `joinedAt`.
  - `AppUser` fields: `id`, `displayName`, `photoUrl?`.
- [x] **1.2 Setup Local Storage (Hive)**
  - Implement `SideQuestRepository` interface in `domain`.
  - Implement `HiveSideQuestRepository` in `data`.
  - Generate Hive TypeAdapters for entities.
- [x] **1.3 UI: SideQuest Creation Flow**
  - Build a "Create SideQuest" modal/sheet/screen.
  - Implement form validation and a `DateTime` picker for deadlines.
- [x] **1.4 UI: SideQuest List (Home)**
  - Refactor `HomeScreen` to display a list of active quests from Hive.
  - Add an empty state when no quests are present.

## Phase 2: Quest Details & Participation

_Goal: Enable users to interact with individual quests and track progress._

- [ ] **2.1 Quest Detail Screen**
  - Create `@RoutePage() SideQuestDetailScreen`.
  - Implement a live countdown timer for the deadline.
  - Display the participant list with status indicators.
- [ ] **2.2 Completion Logic**
  - Create a Riverpod `AsyncNotifier` to handle the "Mark as Completed" action.
  - Implement local state updates and persistence.
- [ ] **2.3 Sharing Invitations**
  - Add a "Share Invite" button.
  - Integrate `share_plus` to generate a text-based invitation with the quest code.

## Phase 3: Backend Integration (Real-time Sync)

_Goal: Transition to a shared database to allow multi-user interaction._

- [ ] **3.1 Firebase Setup**
  - Initialize Firebase Project (Android/iOS).
  - Implement Anonymous or Social Authentication.
- [ ] **3.2 Firestore Repository**
  - Create `FirestoreSideQuestRepository`.
  - Implement real-time synchronization using Firestore Streams.
  - Migrate local Hive data to Firestore on first sign-in.
- [ ] **3.3 Joining System**
  - Create a "Join Quest" dialog to enter 6-digit invite codes.
  - Implement backend logic to validate codes and add participants.

## Phase 4: Deep Linking

_Goal: Streamline the onboarding process for invited users._

- [ ] **4.1 Deep Link Configuration**
  - Setup Android App Links and iOS Universal Links.
  - Handle `sidequests.app/join/{code}` URLs within `AppRouter`.
- [ ] **4.2 Automatic Onboarding**
  - Implement logic to automatically join a quest when the app is opened via a deep link.

## Phase 5: Polish & Notifications

_Goal: Enhance user experience and engagement._

- [ ] **5.1 Push Notifications**
  - Integrate Firebase Cloud Messaging (FCM).
  - Send alerts for: "New participant joined", "Quest completed", and "Deadline approaching".
- [ ] **5.2 UI/UX Refinement**
  - Add haptic feedback for actions.
  - Implement animations (e.g., confetti) for quest completion.
  - Final audit of `AppTheme` and typography (Inter).
