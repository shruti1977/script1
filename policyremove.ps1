# Specify the name of the policy assignment to be removed
$assignmentName = 'TLS for Storage Account'

# Get the existing policy assignment
$existingAssignment = Get-AzPolicyAssignment -Name $assignmentName -Scope '/subscriptions/c0415c1a-d06e-4a6c-8b0f-5850059671a9'

# Check if the existing assignment exists
if ($existingAssignment) {
    # Remove the policy assignment
    Remove-AzPolicyAssignment -Id $existingAssignment.ResourceId

    Write-Host "Policy assignment '$assignmentName' removed successfully."
} else {
    Write-Host "Policy assignment '$assignmentName' not found."
}

