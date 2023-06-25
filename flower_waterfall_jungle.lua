--Define variables
local coworking_space_name = "EcoWorkSpace"
local number_of_freelancers = 0
local number_of_startups = 0

--Create workspace
function createWorkspace()
  print("Creating workspace for "..coworking_space_name.."; Freelancers: "..number_of_freelancers.."; Startups: "..number_of_startups)
end

--Rent workspace
function rentWorkspace(customer_type, number_of_customers)
  if customer_type == "freelancers" then
    number_of_freelancers = number_of_freelancers + number_of_customers
  elseif customer_type == "startups" then
    number_of_startups = number_of_startups + number_of_customers
  end
  print("Renting workspace for "..coworking_space_name.."; Freelancers: "..number_of_freelancers.."; Startups: "..number_of_startups)
end

--Configure workspace
function configureWorkspace()
  print("Configuring workspace for "..coworking_space_name.."; Freelancers: "..number_of_freelancers.."; Startups: "..number_of_startups)
end

--Matain workspace
function maintainWorkspace()
  print("Maintaining workspace for "..coworking_space_name.."; Freelancers: "..number_of_freelancers.."; Startups: "..number_of_startups)
end

createWorkspace()

--Loop in freelancers
for i = 1, 20 do
  rentWorkspace("freelancers", 1)
end

--Loop in startups
for i = 1, 10 do
  rentWorkspace("startups", 1)
end

configureWorkspace()
maintainWorkspace()

--Define functions to notify customers
function notifyFreelancers()
  print("Notifying freelancers about workspace at "..coworking_space_name.."!")
end

function notifyStartups()
  print("Notifying startups about workspace at "..coworking_space_name.."!")
end

--Loop to notify customers
for i = 1, number_of_freelancers do
  notifyFreelancers()
end

for i = 1, number_of_startups do
  notifyStartups()
end