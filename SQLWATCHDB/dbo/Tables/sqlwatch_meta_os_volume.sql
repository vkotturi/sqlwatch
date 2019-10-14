﻿CREATE TABLE [dbo].[sqlwatch_meta_os_volume]
(
	[sql_instance] nvarchar(25) not null default @@SERVERNAME,
	[sqlwatch_volume_id] smallint identity (-32768,1) not null,
	[volume_name] nvarchar(255) not null,
	[label] nvarchar(255) not null,
	[file_system] varchar(255) not null,
	[volume_block_size_bytes] int,
	[date_added] datetime not null default getdate(),
	[date_updated] datetime null,
	[last_seen] datetime null,
	constraint pk_sqlwatch_meta_os_volume primary key clustered (
		[sql_instance], [sqlwatch_volume_id]
		)
)
