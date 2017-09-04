.class public Lnet/sqlcipher/CrossProcessCursorWrapper;
.super Landroid/database/CursorWrapper;
.source "CrossProcessCursorWrapper.java"

# interfaces
.implements Landroid/database/CrossProcessCursor;


# direct methods
.method public constructor <init>(Landroid/database/Cursor;)V
    .registers 2
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 11
    invoke-direct {p0, p1}, Landroid/database/CursorWrapper;-><init>(Landroid/database/Cursor;)V

    .line 12
    return-void
.end method


# virtual methods
.method public fillWindow(ILandroid/database/CursorWindow;)V
    .registers 7
    .param p1, "position"    # I
    .param p2, "window"    # Landroid/database/CursorWindow;

    .prologue
    .line 21
    if-ltz p1, :cond_8

    invoke-virtual {p0}, Lnet/sqlcipher/CrossProcessCursorWrapper;->getCount()I

    move-result v3

    if-le p1, v3, :cond_9

    .line 52
    :cond_8
    :goto_8
    return-void

    .line 24
    :cond_9
    invoke-virtual {p2}, Landroid/database/CursorWindow;->acquireReference()V

    .line 26
    add-int/lit8 v3, p1, -0x1

    :try_start_e
    invoke-virtual {p0, v3}, Lnet/sqlcipher/CrossProcessCursorWrapper;->moveToPosition(I)Z

    .line 27
    invoke-virtual {p2}, Landroid/database/CursorWindow;->clear()V

    .line 28
    invoke-virtual {p2, p1}, Landroid/database/CursorWindow;->setStartPosition(I)V

    .line 29
    invoke-virtual {p0}, Lnet/sqlcipher/CrossProcessCursorWrapper;->getColumnCount()I

    move-result v0

    .line 30
    .local v0, "columnNum":I
    invoke-virtual {p2, v0}, Landroid/database/CursorWindow;->setNumColumns(I)Z

    .line 31
    :cond_1e
    :goto_1e
    invoke-virtual {p0}, Lnet/sqlcipher/CrossProcessCursorWrapper;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_42

    invoke-virtual {p2}, Landroid/database/CursorWindow;->allocRow()Z

    move-result v3

    if-eqz v3, :cond_42

    .line 32
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2b
    if-ge v2, v0, :cond_1e

    .line 33
    invoke-virtual {p0, v2}, Lnet/sqlcipher/CrossProcessCursorWrapper;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 34
    .local v1, "field":Ljava/lang/String;
    if-eqz v1, :cond_46

    .line 35
    invoke-virtual {p0}, Lnet/sqlcipher/CrossProcessCursorWrapper;->getPosition()I

    move-result v3

    invoke-virtual {p2, v1, v3, v2}, Landroid/database/CursorWindow;->putString(Ljava/lang/String;II)Z

    move-result v3

    if-nez v3, :cond_59

    .line 36
    invoke-virtual {p2}, Landroid/database/CursorWindow;->freeLastRow()V
    :try_end_40
    .catch Ljava/lang/IllegalStateException; {:try_start_e .. :try_end_40} :catch_41
    .catchall {:try_start_e .. :try_end_40} :catchall_54

    goto :goto_1e

    .line 47
    .end local v0    # "columnNum":I
    .end local v1    # "field":Ljava/lang/String;
    .end local v2    # "i":I
    :catch_41
    move-exception v3

    .line 50
    :cond_42
    invoke-virtual {p2}, Landroid/database/CursorWindow;->releaseReference()V

    goto :goto_8

    .line 40
    .restart local v0    # "columnNum":I
    .restart local v1    # "field":Ljava/lang/String;
    .restart local v2    # "i":I
    :cond_46
    :try_start_46
    invoke-virtual {p0}, Lnet/sqlcipher/CrossProcessCursorWrapper;->getPosition()I

    move-result v3

    invoke-virtual {p2, v3, v2}, Landroid/database/CursorWindow;->putNull(II)Z

    move-result v3

    if-nez v3, :cond_59

    .line 41
    invoke-virtual {p2}, Landroid/database/CursorWindow;->freeLastRow()V
    :try_end_53
    .catch Ljava/lang/IllegalStateException; {:try_start_46 .. :try_end_53} :catch_41
    .catchall {:try_start_46 .. :try_end_53} :catchall_54

    goto :goto_1e

    .line 50
    .end local v0    # "columnNum":I
    .end local v1    # "field":Ljava/lang/String;
    .end local v2    # "i":I
    :catchall_54
    move-exception v3

    invoke-virtual {p2}, Landroid/database/CursorWindow;->releaseReference()V

    throw v3

    .line 32
    .restart local v0    # "columnNum":I
    .restart local v1    # "field":Ljava/lang/String;
    .restart local v2    # "i":I
    :cond_59
    add-int/lit8 v2, v2, 0x1

    goto :goto_2b
.end method

.method public getWindow()Landroid/database/CursorWindow;
    .registers 2

    .prologue
    .line 16
    const/4 v0, 0x0

    return-object v0
.end method

.method public onMove(II)Z
    .registers 4
    .param p1, "oldPosition"    # I
    .param p2, "newPosition"    # I

    .prologue
    .line 56
    const/4 v0, 0x1

    return v0
.end method
