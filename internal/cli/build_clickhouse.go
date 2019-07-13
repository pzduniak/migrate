// +build clickhouse

package cli

import (
	_ "github.com/pzduniak/migrate/database/clickhouse"
	_ "github.com/kshvakov/clickhouse"
)
