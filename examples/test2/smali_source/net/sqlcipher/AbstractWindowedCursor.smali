.class public abstract Lnet/sqlcipher/AbstractWindowedCursor;
.super Lnet/sqlcipher/AbstractCursor;
.source "AbstractWindowedCursor.java"


# instance fields
.field protected mWindow:Lnet/sqlcipher/CursorWindow;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 24
    invoke-direct {p0}, Lnet/sqlcipher/AbstractCursor;-><init>()V

    return-void
.end method


# virtual methods
.method protected checkPosition()V
    .registers 3

    .prologue
    .line 216
    invoke-super {p0}, Lnet/sqlcipher/AbstractCursor;->checkPosition()V

    .line 218
    iget-object v0, p0, Lnet/sqlcipher/AbstractWindowedCursor;->mWindow:Lnet/sqlcipher/CursorWindow;

    if-nez v0, :cond_f

    .line 219
    new-instance v0, Lnet/sqlcipher/StaleDataException;

    const-string v1, "Access closed cursor"

    invoke-direct {v0, v1}, Lnet/sqlcipher/StaleDataException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 221
    :cond_f
    return-void
.end method

.method public copyStringToBuffer(ILandroid/database/CharArrayBuffer;)V
    .registers 5
    .param p1, "columnIndex"    # I
    .param p2, "buffer"    # Landroid/database/CharArrayBuffer;

    .prologue
    .line 57
    invoke-virtual {p0}, Lnet/sqlcipher/AbstractWindowedCursor;->checkPosition()V

    .line 59
    iget-object v1, p0, Lnet/sqlcipher/AbstractWindowedCursor;->mUpdatedRows:Ljava/util/HashMap;

    monitor-enter v1

    .line 60
    :try_start_6
    invoke-virtual {p0, p1}, Lnet/sqlcipher/AbstractWindowedCursor;->isFieldUpdated(I)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 61
    invoke-super {p0, p1, p2}, Lnet/sqlcipher/AbstractCursor;->copyStringToBuffer(ILandroid/database/CharArrayBuffer;)V

    .line 63
    :cond_f
    monitor-exit v1
    :try_end_10
    .catchall {:try_start_6 .. :try_end_10} :catchall_18

    .line 65
    iget-object v0, p0, Lnet/sqlcipher/AbstractWindowedCursor;->mWindow:Lnet/sqlcipher/CursorWindow;

    iget v1, p0, Lnet/sqlcipher/AbstractWindowedCursor;->mPos:I

    invoke-virtual {v0, v1, p1, p2}, Lnet/sqlcipher/CursorWindow;->copyStringToBuffer(IILandroid/database/CharArrayBuffer;)V

    .line 66
    return-void

    .line 63
    :catchall_18
    move-exception v0

    :try_start_19
    monitor-exit v1
    :try_end_1a
    .catchall {:try_start_19 .. :try_end_1a} :catchall_18

    throw v0
.end method

.method public getBlob(I)[B
    .registers 4
    .param p1, "columnIndex"    # I

    .prologue
    .line 29
    invoke-virtual {p0}, Lnet/sqlcipher/AbstractWindowedCursor;->checkPosition()V

    .line 31
    iget-object v1, p0, Lnet/sqlcipher/AbstractWindowedCursor;->mUpdatedRows:Ljava/util/HashMap;

    monitor-enter v1

    .line 32
    :try_start_6
    invoke-virtual {p0, p1}, Lnet/sqlcipher/AbstractWindowedCursor;->isFieldUpdated(I)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 33
    invoke-virtual {p0, p1}, Lnet/sqlcipher/AbstractWindowedCursor;->getUpdatedField(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    check-cast v0, [B

    monitor-exit v1

    .line 37
    :goto_15
    return-object v0

    .line 35
    :cond_16
    monitor-exit v1
    :try_end_17
    .catchall {:try_start_6 .. :try_end_17} :catchall_20

    .line 37
    iget-object v0, p0, Lnet/sqlcipher/AbstractWindowedCursor;->mWindow:Lnet/sqlcipher/CursorWindow;

    iget v1, p0, Lnet/sqlcipher/AbstractWindowedCursor;->mPos:I

    invoke-virtual {v0, v1, p1}, Lnet/sqlcipher/CursorWindow;->getBlob(II)[B

    move-result-object v0

    goto :goto_15

    .line 35
    :catchall_20
    move-exception v0

    :try_start_21
    monitor-exit v1
    :try_end_22
    .catchall {:try_start_21 .. :try_end_22} :catchall_20

    throw v0
.end method

.method public getDouble(I)D
    .registers 7
    .param p1, "columnIndex"    # I

    .prologue
    .line 131
    invoke-virtual {p0}, Lnet/sqlcipher/AbstractWindowedCursor;->checkPosition()V

    .line 133
    iget-object v4, p0, Lnet/sqlcipher/AbstractWindowedCursor;->mUpdatedRows:Ljava/util/HashMap;

    monitor-enter v4

    .line 134
    :try_start_6
    invoke-virtual {p0, p1}, Lnet/sqlcipher/AbstractWindowedCursor;->isFieldUpdated(I)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 135
    invoke-virtual {p0, p1}, Lnet/sqlcipher/AbstractWindowedCursor;->getUpdatedField(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    .line 136
    .local v0, "value":Ljava/lang/Number;
    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v2

    monitor-exit v4

    .line 140
    .end local v0    # "value":Ljava/lang/Number;
    :goto_17
    return-wide v2

    .line 138
    :cond_18
    monitor-exit v4
    :try_end_19
    .catchall {:try_start_6 .. :try_end_19} :catchall_22

    .line 140
    iget-object v1, p0, Lnet/sqlcipher/AbstractWindowedCursor;->mWindow:Lnet/sqlcipher/CursorWindow;

    iget v2, p0, Lnet/sqlcipher/AbstractWindowedCursor;->mPos:I

    invoke-virtual {v1, v2, p1}, Lnet/sqlcipher/CursorWindow;->getDouble(II)D

    move-result-wide v2

    goto :goto_17

    .line 138
    :catchall_22
    move-exception v1

    :try_start_23
    monitor-exit v4
    :try_end_24
    .catchall {:try_start_23 .. :try_end_24} :catchall_22

    throw v1
.end method

.method public getFloat(I)F
    .registers 5
    .param p1, "columnIndex"    # I

    .prologue
    .line 116
    invoke-virtual {p0}, Lnet/sqlcipher/AbstractWindowedCursor;->checkPosition()V

    .line 118
    iget-object v2, p0, Lnet/sqlcipher/AbstractWindowedCursor;->mUpdatedRows:Ljava/util/HashMap;

    monitor-enter v2

    .line 119
    :try_start_6
    invoke-virtual {p0, p1}, Lnet/sqlcipher/AbstractWindowedCursor;->isFieldUpdated(I)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 120
    invoke-virtual {p0, p1}, Lnet/sqlcipher/AbstractWindowedCursor;->getUpdatedField(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    .line 121
    .local v0, "value":Ljava/lang/Number;
    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v1

    monitor-exit v2

    .line 125
    .end local v0    # "value":Ljava/lang/Number;
    :goto_17
    return v1

    .line 123
    :cond_18
    monitor-exit v2
    :try_end_19
    .catchall {:try_start_6 .. :try_end_19} :catchall_22

    .line 125
    iget-object v1, p0, Lnet/sqlcipher/AbstractWindowedCursor;->mWindow:Lnet/sqlcipher/CursorWindow;

    iget v2, p0, Lnet/sqlcipher/AbstractWindowedCursor;->mPos:I

    invoke-virtual {v1, v2, p1}, Lnet/sqlcipher/CursorWindow;->getFloat(II)F

    move-result v1

    goto :goto_17

    .line 123
    :catchall_22
    move-exception v1

    :try_start_23
    monitor-exit v2
    :try_end_24
    .catchall {:try_start_23 .. :try_end_24} :catchall_22

    throw v1
.end method

.method public getInt(I)I
    .registers 5
    .param p1, "columnIndex"    # I

    .prologue
    .line 86
    invoke-virtual {p0}, Lnet/sqlcipher/AbstractWindowedCursor;->checkPosition()V

    .line 88
    iget-object v2, p0, Lnet/sqlcipher/AbstractWindowedCursor;->mUpdatedRows:Ljava/util/HashMap;

    monitor-enter v2

    .line 89
    :try_start_6
    invoke-virtual {p0, p1}, Lnet/sqlcipher/AbstractWindowedCursor;->isFieldUpdated(I)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 90
    invoke-virtual {p0, p1}, Lnet/sqlcipher/AbstractWindowedCursor;->getUpdatedField(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    .line 91
    .local v0, "value":Ljava/lang/Number;
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v1

    monitor-exit v2

    .line 95
    .end local v0    # "value":Ljava/lang/Number;
    :goto_17
    return v1

    .line 93
    :cond_18
    monitor-exit v2
    :try_end_19
    .catchall {:try_start_6 .. :try_end_19} :catchall_22

    .line 95
    iget-object v1, p0, Lnet/sqlcipher/AbstractWindowedCursor;->mWindow:Lnet/sqlcipher/CursorWindow;

    iget v2, p0, Lnet/sqlcipher/AbstractWindowedCursor;->mPos:I

    invoke-virtual {v1, v2, p1}, Lnet/sqlcipher/CursorWindow;->getInt(II)I

    move-result v1

    goto :goto_17

    .line 93
    :catchall_22
    move-exception v1

    :try_start_23
    monitor-exit v2
    :try_end_24
    .catchall {:try_start_23 .. :try_end_24} :catchall_22

    throw v1
.end method

.method public getLong(I)J
    .registers 7
    .param p1, "columnIndex"    # I

    .prologue
    .line 101
    invoke-virtual {p0}, Lnet/sqlcipher/AbstractWindowedCursor;->checkPosition()V

    .line 103
    iget-object v4, p0, Lnet/sqlcipher/AbstractWindowedCursor;->mUpdatedRows:Ljava/util/HashMap;

    monitor-enter v4

    .line 104
    :try_start_6
    invoke-virtual {p0, p1}, Lnet/sqlcipher/AbstractWindowedCursor;->isFieldUpdated(I)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 105
    invoke-virtual {p0, p1}, Lnet/sqlcipher/AbstractWindowedCursor;->getUpdatedField(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    .line 106
    .local v0, "value":Ljava/lang/Number;
    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v2

    monitor-exit v4

    .line 110
    .end local v0    # "value":Ljava/lang/Number;
    :goto_17
    return-wide v2

    .line 108
    :cond_18
    monitor-exit v4
    :try_end_19
    .catchall {:try_start_6 .. :try_end_19} :catchall_22

    .line 110
    iget-object v1, p0, Lnet/sqlcipher/AbstractWindowedCursor;->mWindow:Lnet/sqlcipher/CursorWindow;

    iget v2, p0, Lnet/sqlcipher/AbstractWindowedCursor;->mPos:I

    invoke-virtual {v1, v2, p1}, Lnet/sqlcipher/CursorWindow;->getLong(II)J

    move-result-wide v2

    goto :goto_17

    .line 108
    :catchall_22
    move-exception v1

    :try_start_23
    monitor-exit v4
    :try_end_24
    .catchall {:try_start_23 .. :try_end_24} :catchall_22

    throw v1
.end method

.method public getShort(I)S
    .registers 5
    .param p1, "columnIndex"    # I

    .prologue
    .line 71
    invoke-virtual {p0}, Lnet/sqlcipher/AbstractWindowedCursor;->checkPosition()V

    .line 73
    iget-object v2, p0, Lnet/sqlcipher/AbstractWindowedCursor;->mUpdatedRows:Ljava/util/HashMap;

    monitor-enter v2

    .line 74
    :try_start_6
    invoke-virtual {p0, p1}, Lnet/sqlcipher/AbstractWindowedCursor;->isFieldUpdated(I)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 75
    invoke-virtual {p0, p1}, Lnet/sqlcipher/AbstractWindowedCursor;->getUpdatedField(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    .line 76
    .local v0, "value":Ljava/lang/Number;
    invoke-virtual {v0}, Ljava/lang/Number;->shortValue()S

    move-result v1

    monitor-exit v2

    .line 80
    .end local v0    # "value":Ljava/lang/Number;
    :goto_17
    return v1

    .line 78
    :cond_18
    monitor-exit v2
    :try_end_19
    .catchall {:try_start_6 .. :try_end_19} :catchall_22

    .line 80
    iget-object v1, p0, Lnet/sqlcipher/AbstractWindowedCursor;->mWindow:Lnet/sqlcipher/CursorWindow;

    iget v2, p0, Lnet/sqlcipher/AbstractWindowedCursor;->mPos:I

    invoke-virtual {v1, v2, p1}, Lnet/sqlcipher/CursorWindow;->getShort(II)S

    move-result v1

    goto :goto_17

    .line 78
    :catchall_22
    move-exception v1

    :try_start_23
    monitor-exit v2
    :try_end_24
    .catchall {:try_start_23 .. :try_end_24} :catchall_22

    throw v1
.end method

.method public getString(I)Ljava/lang/String;
    .registers 4
    .param p1, "columnIndex"    # I

    .prologue
    .line 43
    invoke-virtual {p0}, Lnet/sqlcipher/AbstractWindowedCursor;->checkPosition()V

    .line 45
    iget-object v1, p0, Lnet/sqlcipher/AbstractWindowedCursor;->mUpdatedRows:Ljava/util/HashMap;

    monitor-enter v1

    .line 46
    :try_start_6
    invoke-virtual {p0, p1}, Lnet/sqlcipher/AbstractWindowedCursor;->isFieldUpdated(I)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 47
    invoke-virtual {p0, p1}, Lnet/sqlcipher/AbstractWindowedCursor;->getUpdatedField(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    monitor-exit v1

    .line 51
    :goto_13
    return-object v0

    .line 49
    :cond_14
    monitor-exit v1
    :try_end_15
    .catchall {:try_start_6 .. :try_end_15} :catchall_1e

    .line 51
    iget-object v0, p0, Lnet/sqlcipher/AbstractWindowedCursor;->mWindow:Lnet/sqlcipher/CursorWindow;

    iget v1, p0, Lnet/sqlcipher/AbstractWindowedCursor;->mPos:I

    invoke-virtual {v0, v1, p1}, Lnet/sqlcipher/CursorWindow;->getString(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_13

    .line 49
    :catchall_1e
    move-exception v0

    :try_start_1f
    monitor-exit v1
    :try_end_20
    .catchall {:try_start_1f .. :try_end_20} :catchall_1e

    throw v0
.end method

.method public bridge synthetic getWindow()Landroid/database/CursorWindow;
    .registers 2

    .prologue
    .line 24
    invoke-virtual {p0}, Lnet/sqlcipher/AbstractWindowedCursor;->getWindow()Lnet/sqlcipher/CursorWindow;

    move-result-object v0

    return-object v0
.end method

.method public getWindow()Lnet/sqlcipher/CursorWindow;
    .registers 2

    .prologue
    .line 225
    iget-object v0, p0, Lnet/sqlcipher/AbstractWindowedCursor;->mWindow:Lnet/sqlcipher/CursorWindow;

    return-object v0
.end method

.method public hasWindow()Z
    .registers 2

    .prologue
    .line 240
    iget-object v0, p0, Lnet/sqlcipher/AbstractWindowedCursor;->mWindow:Lnet/sqlcipher/CursorWindow;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public isBlob(I)Z
    .registers 5
    .param p1, "columnIndex"    # I

    .prologue
    .line 159
    invoke-virtual {p0}, Lnet/sqlcipher/AbstractWindowedCursor;->checkPosition()V

    .line 161
    iget-object v2, p0, Lnet/sqlcipher/AbstractWindowedCursor;->mUpdatedRows:Ljava/util/HashMap;

    monitor-enter v2

    .line 162
    :try_start_6
    invoke-virtual {p0, p1}, Lnet/sqlcipher/AbstractWindowedCursor;->isFieldUpdated(I)Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 163
    invoke-virtual {p0, p1}, Lnet/sqlcipher/AbstractWindowedCursor;->getUpdatedField(I)Ljava/lang/Object;

    move-result-object v0

    .line 164
    .local v0, "object":Ljava/lang/Object;
    if-eqz v0, :cond_16

    instance-of v1, v0, [B

    if-eqz v1, :cond_19

    :cond_16
    const/4 v1, 0x1

    :goto_17
    monitor-exit v2

    .line 168
    .end local v0    # "object":Ljava/lang/Object;
    :goto_18
    return v1

    .line 164
    .restart local v0    # "object":Ljava/lang/Object;
    :cond_19
    const/4 v1, 0x0

    goto :goto_17

    .line 166
    .end local v0    # "object":Ljava/lang/Object;
    :cond_1b
    monitor-exit v2
    :try_end_1c
    .catchall {:try_start_6 .. :try_end_1c} :catchall_25

    .line 168
    iget-object v1, p0, Lnet/sqlcipher/AbstractWindowedCursor;->mWindow:Lnet/sqlcipher/CursorWindow;

    iget v2, p0, Lnet/sqlcipher/AbstractWindowedCursor;->mPos:I

    invoke-virtual {v1, v2, p1}, Lnet/sqlcipher/CursorWindow;->isBlob(II)Z

    move-result v1

    goto :goto_18

    .line 166
    :catchall_25
    move-exception v1

    :try_start_26
    monitor-exit v2
    :try_end_27
    .catchall {:try_start_26 .. :try_end_27} :catchall_25

    throw v1
.end method

.method public isFloat(I)Z
    .registers 5
    .param p1, "columnIndex"    # I

    .prologue
    .line 201
    invoke-virtual {p0}, Lnet/sqlcipher/AbstractWindowedCursor;->checkPosition()V

    .line 203
    iget-object v2, p0, Lnet/sqlcipher/AbstractWindowedCursor;->mUpdatedRows:Ljava/util/HashMap;

    monitor-enter v2

    .line 204
    :try_start_6
    invoke-virtual {p0, p1}, Lnet/sqlcipher/AbstractWindowedCursor;->isFieldUpdated(I)Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 205
    invoke-virtual {p0, p1}, Lnet/sqlcipher/AbstractWindowedCursor;->getUpdatedField(I)Ljava/lang/Object;

    move-result-object v0

    .line 206
    .local v0, "object":Ljava/lang/Object;
    if-eqz v0, :cond_1d

    instance-of v1, v0, Ljava/lang/Float;

    if-nez v1, :cond_1a

    instance-of v1, v0, Ljava/lang/Double;

    if-eqz v1, :cond_1d

    :cond_1a
    const/4 v1, 0x1

    :goto_1b
    monitor-exit v2

    .line 210
    .end local v0    # "object":Ljava/lang/Object;
    :goto_1c
    return v1

    .line 206
    .restart local v0    # "object":Ljava/lang/Object;
    :cond_1d
    const/4 v1, 0x0

    goto :goto_1b

    .line 208
    .end local v0    # "object":Ljava/lang/Object;
    :cond_1f
    monitor-exit v2
    :try_end_20
    .catchall {:try_start_6 .. :try_end_20} :catchall_29

    .line 210
    iget-object v1, p0, Lnet/sqlcipher/AbstractWindowedCursor;->mWindow:Lnet/sqlcipher/CursorWindow;

    iget v2, p0, Lnet/sqlcipher/AbstractWindowedCursor;->mPos:I

    invoke-virtual {v1, v2, p1}, Lnet/sqlcipher/CursorWindow;->isFloat(II)Z

    move-result v1

    goto :goto_1c

    .line 208
    :catchall_29
    move-exception v1

    :try_start_2a
    monitor-exit v2
    :try_end_2b
    .catchall {:try_start_2a .. :try_end_2b} :catchall_29

    throw v1
.end method

.method public isLong(I)Z
    .registers 5
    .param p1, "columnIndex"    # I

    .prologue
    .line 187
    invoke-virtual {p0}, Lnet/sqlcipher/AbstractWindowedCursor;->checkPosition()V

    .line 189
    iget-object v2, p0, Lnet/sqlcipher/AbstractWindowedCursor;->mUpdatedRows:Ljava/util/HashMap;

    monitor-enter v2

    .line 190
    :try_start_6
    invoke-virtual {p0, p1}, Lnet/sqlcipher/AbstractWindowedCursor;->isFieldUpdated(I)Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 191
    invoke-virtual {p0, p1}, Lnet/sqlcipher/AbstractWindowedCursor;->getUpdatedField(I)Ljava/lang/Object;

    move-result-object v0

    .line 192
    .local v0, "object":Ljava/lang/Object;
    if-eqz v0, :cond_1d

    instance-of v1, v0, Ljava/lang/Integer;

    if-nez v1, :cond_1a

    instance-of v1, v0, Ljava/lang/Long;

    if-eqz v1, :cond_1d

    :cond_1a
    const/4 v1, 0x1

    :goto_1b
    monitor-exit v2

    .line 196
    .end local v0    # "object":Ljava/lang/Object;
    :goto_1c
    return v1

    .line 192
    .restart local v0    # "object":Ljava/lang/Object;
    :cond_1d
    const/4 v1, 0x0

    goto :goto_1b

    .line 194
    .end local v0    # "object":Ljava/lang/Object;
    :cond_1f
    monitor-exit v2
    :try_end_20
    .catchall {:try_start_6 .. :try_end_20} :catchall_29

    .line 196
    iget-object v1, p0, Lnet/sqlcipher/AbstractWindowedCursor;->mWindow:Lnet/sqlcipher/CursorWindow;

    iget v2, p0, Lnet/sqlcipher/AbstractWindowedCursor;->mPos:I

    invoke-virtual {v1, v2, p1}, Lnet/sqlcipher/CursorWindow;->isLong(II)Z

    move-result v1

    goto :goto_1c

    .line 194
    :catchall_29
    move-exception v1

    :try_start_2a
    monitor-exit v2
    :try_end_2b
    .catchall {:try_start_2a .. :try_end_2b} :catchall_29

    throw v1
.end method

.method public isNull(I)Z
    .registers 4
    .param p1, "columnIndex"    # I

    .prologue
    .line 146
    invoke-virtual {p0}, Lnet/sqlcipher/AbstractWindowedCursor;->checkPosition()V

    .line 148
    iget-object v1, p0, Lnet/sqlcipher/AbstractWindowedCursor;->mUpdatedRows:Ljava/util/HashMap;

    monitor-enter v1

    .line 149
    :try_start_6
    invoke-virtual {p0, p1}, Lnet/sqlcipher/AbstractWindowedCursor;->isFieldUpdated(I)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 150
    invoke-virtual {p0, p1}, Lnet/sqlcipher/AbstractWindowedCursor;->getUpdatedField(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_15

    const/4 v0, 0x1

    :goto_13
    monitor-exit v1

    .line 154
    :goto_14
    return v0

    .line 150
    :cond_15
    const/4 v0, 0x0

    goto :goto_13

    .line 152
    :cond_17
    monitor-exit v1
    :try_end_18
    .catchall {:try_start_6 .. :try_end_18} :catchall_21

    .line 154
    iget-object v0, p0, Lnet/sqlcipher/AbstractWindowedCursor;->mWindow:Lnet/sqlcipher/CursorWindow;

    iget v1, p0, Lnet/sqlcipher/AbstractWindowedCursor;->mPos:I

    invoke-virtual {v0, v1, p1}, Lnet/sqlcipher/CursorWindow;->isNull(II)Z

    move-result v0

    goto :goto_14

    .line 152
    :catchall_21
    move-exception v0

    :try_start_22
    monitor-exit v1
    :try_end_23
    .catchall {:try_start_22 .. :try_end_23} :catchall_21

    throw v0
.end method

.method public isString(I)Z
    .registers 5
    .param p1, "columnIndex"    # I

    .prologue
    .line 173
    invoke-virtual {p0}, Lnet/sqlcipher/AbstractWindowedCursor;->checkPosition()V

    .line 175
    iget-object v2, p0, Lnet/sqlcipher/AbstractWindowedCursor;->mUpdatedRows:Ljava/util/HashMap;

    monitor-enter v2

    .line 176
    :try_start_6
    invoke-virtual {p0, p1}, Lnet/sqlcipher/AbstractWindowedCursor;->isFieldUpdated(I)Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 177
    invoke-virtual {p0, p1}, Lnet/sqlcipher/AbstractWindowedCursor;->getUpdatedField(I)Ljava/lang/Object;

    move-result-object v0

    .line 178
    .local v0, "object":Ljava/lang/Object;
    if-eqz v0, :cond_16

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_19

    :cond_16
    const/4 v1, 0x1

    :goto_17
    monitor-exit v2

    .line 182
    .end local v0    # "object":Ljava/lang/Object;
    :goto_18
    return v1

    .line 178
    .restart local v0    # "object":Ljava/lang/Object;
    :cond_19
    const/4 v1, 0x0

    goto :goto_17

    .line 180
    .end local v0    # "object":Ljava/lang/Object;
    :cond_1b
    monitor-exit v2
    :try_end_1c
    .catchall {:try_start_6 .. :try_end_1c} :catchall_25

    .line 182
    iget-object v1, p0, Lnet/sqlcipher/AbstractWindowedCursor;->mWindow:Lnet/sqlcipher/CursorWindow;

    iget v2, p0, Lnet/sqlcipher/AbstractWindowedCursor;->mPos:I

    invoke-virtual {v1, v2, p1}, Lnet/sqlcipher/CursorWindow;->isString(II)Z

    move-result v1

    goto :goto_18

    .line 180
    :catchall_25
    move-exception v1

    :try_start_26
    monitor-exit v2
    :try_end_27
    .catchall {:try_start_26 .. :try_end_27} :catchall_25

    throw v1
.end method

.method public setWindow(Lnet/sqlcipher/CursorWindow;)V
    .registers 3
    .param p1, "window"    # Lnet/sqlcipher/CursorWindow;

    .prologue
    .line 233
    iget-object v0, p0, Lnet/sqlcipher/AbstractWindowedCursor;->mWindow:Lnet/sqlcipher/CursorWindow;

    if-eqz v0, :cond_9

    .line 234
    iget-object v0, p0, Lnet/sqlcipher/AbstractWindowedCursor;->mWindow:Lnet/sqlcipher/CursorWindow;

    invoke-virtual {v0}, Lnet/sqlcipher/CursorWindow;->close()V

    .line 236
    :cond_9
    iput-object p1, p0, Lnet/sqlcipher/AbstractWindowedCursor;->mWindow:Lnet/sqlcipher/CursorWindow;

    .line 237
    return-void
.end method
