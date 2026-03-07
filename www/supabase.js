import { createClient } from 'https://cdn.jsdelivr.net/npm/@supabase/supabase-js/+esm'

const supabaseUrl = 'https://wxggfvzxketdlxoonedj.supabase.co'
const supabaseKey = 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Ind4Z2dmdnp4a2V0ZGx4b29uZWRqIiwicm9sZSI6ImFub24iLCJpYXQiOjE3NjkwMzg3OTYsImV4cCI6MjA4NDYxNDc5Nn0.PIbJdDJHAop7-zv00dyIJhUExoqBOFK8TkTKk6whtqE'

export const supabase = createClient(supabaseUrl, supabaseKey)
