import { serve } from "https://deno.land/std@0.168.0/http/server.ts"

const RESEND_API_KEY = 're_XDUQVDTW_38uy5QprLfz8R7CqCFPWQRvG'

const corsHeaders = {
  'Access-Control-Allow-Origin': '*',
  'Access-Control-Allow-Headers': 'authorization, x-client-info, apikey, content-type',
}

interface WelcomeEmailRequest {
  email: string
  fullName: string
  isOrganizer?: boolean
}

serve(async (req) => {
  // Handle CORS preflight requests
  if (req.method === 'OPTIONS') {
    return new Response('ok', { headers: corsHeaders })
  }

  try {
    const { email, fullName, isOrganizer }: WelcomeEmailRequest = await req.json()

    // Validate required fields
    if (!email || !fullName) {
      return new Response(
        JSON.stringify({ error: 'Email and full name are required' }),
        {
          status: 400,
          headers: { ...corsHeaders, 'Content-Type': 'application/json' },
        }
      )
    }

    // Prepare email content based on user type
    const subject = isOrganizer
      ? 'Welcome to A Play Organiser - Start Creating Events!'
      : 'Welcome to A Play Organiser!'

    const htmlContent = isOrganizer
      ? `
        <!DOCTYPE html>
        <html>
        <head>
          <style>
            body { font-family: Arial, sans-serif; line-height: 1.6; color: #333; }
            .container { max-width: 600px; margin: 0 auto; padding: 20px; }
            .header { background-color: #FF6B35; color: white; padding: 30px; text-align: center; border-radius: 8px 8px 0 0; }
            .content { background-color: #f9f9f9; padding: 30px; border-radius: 0 0 8px 8px; }
            .button { display: inline-block; background-color: #FF6B35; color: white; padding: 12px 30px; text-decoration: none; border-radius: 5px; margin-top: 20px; }
            .footer { text-align: center; margin-top: 30px; color: #666; font-size: 12px; }
          </style>
        </head>
        <body>
          <div class="container">
            <div class="header">
              <h1>Welcome to A Play Organiser!</h1>
            </div>
            <div class="content">
              <h2>Hello ${fullName}!</h2>
              <p>Thank you for joining A Play Organiser as an event organizer. We're excited to have you on board!</p>
              <p>As an organizer, you can now:</p>
              <ul>
                <li>Create and manage events</li>
                <li>Track event attendance</li>
                <li>Engage with your audience</li>
                <li>Grow your business</li>
              </ul>
              <p>Get started by logging in and creating your first event!</p>
              <p>If you have any questions, feel free to reach out to our support team.</p>
              <p>Best regards,<br>The A Play Organiser Team</p>
            </div>
            <div class="footer">
              <p>© 2026 A Play Organiser. All rights reserved.</p>
            </div>
          </div>
        </body>
        </html>
      `
      : `
        <!DOCTYPE html>
        <html>
        <head>
          <style>
            body { font-family: Arial, sans-serif; line-height: 1.6; color: #333; }
            .container { max-width: 600px; margin: 0 auto; padding: 20px; }
            .header { background-color: #FF6B35; color: white; padding: 30px; text-align: center; border-radius: 8px 8px 0 0; }
            .content { background-color: #f9f9f9; padding: 30px; border-radius: 0 0 8px 8px; }
            .button { display: inline-block; background-color: #FF6B35; color: white; padding: 12px 30px; text-decoration: none; border-radius: 5px; margin-top: 20px; }
            .footer { text-align: center; margin-top: 30px; color: #666; font-size: 12px; }
          </style>
        </head>
        <body>
          <div class="container">
            <div class="header">
              <h1>Welcome to A Play Organiser!</h1>
            </div>
            <div class="content">
              <h2>Hello ${fullName}!</h2>
              <p>Thank you for logging in to A Play Organiser. We're excited to see you again!</p>
              <p>Discover amazing events happening near you and connect with organizers in your community.</p>
              <p>Explore the app and find your next adventure!</p>
              <p>If you have any questions, feel free to reach out to our support team.</p>
              <p>Best regards,<br>The A Play Organiser Team</p>
            </div>
            <div class="footer">
              <p>© 2026 A Play Organiser. All rights reserved.</p>
            </div>
          </div>
        </body>
        </html>
      `

    // Send email via Resend API
    const res = await fetch('https://api.resend.com/emails', {
      method: 'POST',
      headers: {
        'Content-Type': 'application/json',
        'Authorization': `Bearer ${RESEND_API_KEY}`,
      },
      body: JSON.stringify({
        from: 'A Play Organiser <onboarding@resend.dev>',
        to: [email],
        subject: subject,
        html: htmlContent,
      }),
    })

    const data = await res.json()

    if (res.ok) {
      return new Response(
        JSON.stringify({ success: true, messageId: data.id }),
        {
          status: 200,
          headers: { ...corsHeaders, 'Content-Type': 'application/json' },
        }
      )
    } else {
      console.error('Resend API error:', data)
      return new Response(
        JSON.stringify({ error: 'Failed to send email', details: data }),
        {
          status: 500,
          headers: { ...corsHeaders, 'Content-Type': 'application/json' },
        }
      )
    }
  } catch (error) {
    console.error('Error in send-welcome-email function:', error)
    return new Response(
      JSON.stringify({ error: error.message }),
      {
        status: 500,
        headers: { ...corsHeaders, 'Content-Type': 'application/json' },
      }
    )
  }
})
