im trying  to build this app to help blood needs 
USER ROLES:
    Donor:Register, set blood type, availability, location, receive alerts
    Requester:Search for donors, request blood for someone (public or personal)
    Hospital:Update blood stock levels, see donor list by blood type & location, send bulk alerts
    Admin:Manage users, moderate spam, manage hospital access
APP STRUCTURE (Flutter for Mobile)
Authentication:
    Register/Login with role (Donor / Hospital / Requester)
    Firebase Auth (email or phone)
Donor Pages:
    Profile: Name, blood type, city, phone, available (yes/no), last donation date
    Nearby requests (list or map)
    Notifications: hospital needs nearby, direct requests
    Donation history
Hospital Pages:
    Blood Stock Dashboard: Add/update quantity per blood type
    Set “critical level” (ex: if O+ < 3 bags → alert donors)
    See registered donors nearby
    Send push notifications to matching donors
search Page (For anyone):
    Filter donors by blood type + location
    Map/List view
    Contact via phone/email
Notifications:
    From hospitals to donors (automated if stock low)
    From requesters to donors
    Reminders for donors

Donor Features:
Register / login
Set blood type, last donation date, location
Automatically calculate when they can donate again
See countdown: "You can donate again in X days"
Turn reminders ON/OFF
Get reminder 
View nearby blood requests

Create Request (by hospital or requester)
Blood type needed (e.g., O+, A−)
Donation type (e.g., whole blood, plasma)
Amount needed (optional: units)
Urgency (high / medium / low)
Expiration date (after which the request is no longer valid)
Hospital or location
Extra notes (e.g., "for emergency surgery")

Notify Compatible Donors
Send notifications to nearby compatible donors:
Based on blood type compatibility
Based on location (within X km)
Based on last donation date (respecting recovery periods)

Accept Request (by donor)
Donor sees requests they are eligible for
Can accept one and confirm availability
    Once accepted:
        Status = Accepted
        Linked to donor ID
        Marked for tracking

Donation Tracking
After donation, hospital/admin can mark request as fulfilled

Track status:
Pending
Accepted
Completed
Expired
Cancelled
 

If donor accepts but hasn’t donated yet:
Reminder sent X hours before the appointment
If no action, the request may expire and reopen to others
g
View History
Donors can see all past requests they’ve accepted or completeds
Hospitals can track which requests were fulfilled and how quickly