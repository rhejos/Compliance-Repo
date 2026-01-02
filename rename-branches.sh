#!/bin/bash

# Array of exercise numbers
exercises=(
  "01-escalation-decision-framework"
  "02-regulatory-change-tracker"
  "03-incident-response-workflow"
  "04-vendor-risk-assessment"
  "05-policy-gap-analysis"
  "06-communications-review-playbook"
  "07-audit-evidence-collection"
  "08-communications-review-simulation"
)

for ex in "${exercises[@]}"; do
  old_branch="claude/exercise-${ex}-21lOv"
  new_branch="exercise-${ex}"
  
  echo "Renaming: $old_branch -> $new_branch"
  
  # Fetch the old branch
  git fetch origin "$old_branch" 2>/dev/null
  
  # Create local branch from remote
  git checkout -b "$new_branch" "origin/$old_branch" 2>/dev/null || git checkout "$new_branch"
  
  # Push with new name
  git push origin "$new_branch"
  
  # Delete old remote branch
  git push origin --delete "$old_branch" 2>/dev/null
  
  echo "Done: $new_branch"
  echo "---"
done

# Return to main branch
git checkout main 2>/dev/null || git checkout claude/compliance-frameworks-repo-21lOv

echo "All branches renamed!"
