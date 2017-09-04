.class public Lnet/sqlcipher/CursorWindow;
.super Landroid/database/CursorWindow;
.source "CursorWindow.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lnet/sqlcipher/CursorWindow;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mStartPos:I

.field private nWindow:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 491
    new-instance v0, Lnet/sqlcipher/CursorWindow$1;

    invoke-direct {v0}, Lnet/sqlcipher/CursorWindow$1;-><init>()V

    sput-object v0, Lnet/sqlcipher/CursorWindow;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "source"    # Landroid/os/Parcel;
    .param p2, "foo"    # I

    .prologue
    .line 517
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Landroid/database/CursorWindow;-><init>(Z)V

    .line 519
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 520
    .local v0, "nativeBinder":Landroid/os/IBinder;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lnet/sqlcipher/CursorWindow;->mStartPos:I

    .line 522
    invoke-direct {p0, v0}, Lnet/sqlcipher/CursorWindow;->native_init(Landroid/os/IBinder;)V

    .line 523
    return-void
.end method

.method public constructor <init>(Z)V
    .registers 3
    .param p1, "localWindow"    # Z

    .prologue
    .line 40
    invoke-direct {p0, p1}, Landroid/database/CursorWindow;-><init>(Z)V

    .line 41
    const/4 v0, 0x0

    iput v0, p0, Lnet/sqlcipher/CursorWindow;->mStartPos:I

    .line 42
    invoke-direct {p0, p1}, Lnet/sqlcipher/CursorWindow;->native_init(Z)V

    .line 43
    return-void
.end method

.method private native allocRow_native()Z
.end method

.method private native close_native()V
.end method

.method private native copyStringToBuffer_native(IIILandroid/database/CharArrayBuffer;)[C
.end method

.method private native freeLastRow_native()V
.end method

.method private native getBlob_native(II)[B
.end method

.method private native getDouble_native(II)D
.end method

.method private native getLong_native(II)J
.end method

.method private native getNumRows_native()I
.end method

.method private native getString_native(II)Ljava/lang/String;
.end method

.method private native isBlob_native(II)Z
.end method

.method private native isFloat_native(II)Z
.end method

.method private native isInteger_native(II)Z
.end method

.method private native isNull_native(II)Z
.end method

.method private native isString_native(II)Z
.end method

.method private native native_clear()V
.end method

.method private native native_getBinder()Landroid/os/IBinder;
.end method

.method private native native_init(Landroid/os/IBinder;)V
.end method

.method private native native_init(Z)V
.end method

.method public static newFromParcel(Landroid/os/Parcel;)Lnet/sqlcipher/CursorWindow;
    .registers 2
    .param p0, "p"    # Landroid/os/Parcel;

    .prologue
    .line 503
    sget-object v0, Lnet/sqlcipher/CursorWindow;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/sqlcipher/CursorWindow;

    return-object v0
.end method

.method private native putBlob_native([BII)Z
.end method

.method private native putDouble_native(DII)Z
.end method

.method private native putLong_native(JII)Z
.end method

.method private native putNull_native(II)Z
.end method

.method private native putString_native(Ljava/lang/String;II)Z
.end method

.method private native setNumColumns_native(I)Z
.end method


# virtual methods
.method public allocRow()Z
    .registers 2

    .prologue
    .line 100
    invoke-virtual {p0}, Lnet/sqlcipher/CursorWindow;->acquireReference()V

    .line 102
    :try_start_3
    invoke-direct {p0}, Lnet/sqlcipher/CursorWindow;->allocRow_native()Z
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_b

    move-result v0

    .line 104
    invoke-virtual {p0}, Lnet/sqlcipher/CursorWindow;->releaseReference()V

    .line 102
    return v0

    .line 104
    :catchall_b
    move-exception v0

    invoke-virtual {p0}, Lnet/sqlcipher/CursorWindow;->releaseReference()V

    throw v0
.end method

.method public clear()V
    .registers 2

    .prologue
    .line 464
    invoke-virtual {p0}, Lnet/sqlcipher/CursorWindow;->acquireReference()V

    .line 466
    const/4 v0, 0x0

    :try_start_4
    iput v0, p0, Lnet/sqlcipher/CursorWindow;->mStartPos:I

    .line 467
    invoke-direct {p0}, Lnet/sqlcipher/CursorWindow;->native_clear()V
    :try_end_9
    .catchall {:try_start_4 .. :try_end_9} :catchall_d

    .line 469
    invoke-virtual {p0}, Lnet/sqlcipher/CursorWindow;->releaseReference()V

    .line 471
    return-void

    .line 469
    :catchall_d
    move-exception v0

    invoke-virtual {p0}, Lnet/sqlcipher/CursorWindow;->releaseReference()V

    throw v0
.end method

.method public close()V
    .registers 1

    .prologue
    .line 480
    invoke-virtual {p0}, Lnet/sqlcipher/CursorWindow;->releaseReference()V

    .line 481
    return-void
.end method

.method public copyStringToBuffer(IILandroid/database/CharArrayBuffer;)V
    .registers 7
    .param p1, "row"    # I
    .param p2, "col"    # I
    .param p3, "buffer"    # Landroid/database/CharArrayBuffer;

    .prologue
    .line 349
    if-nez p3, :cond_a

    .line 350
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "CharArrayBuffer should not be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 352
    :cond_a
    iget-object v1, p3, Landroid/database/CharArrayBuffer;->data:[C

    if-nez v1, :cond_14

    .line 353
    const/16 v1, 0x40

    new-array v1, v1, [C

    iput-object v1, p3, Landroid/database/CharArrayBuffer;->data:[C

    .line 355
    :cond_14
    invoke-virtual {p0}, Lnet/sqlcipher/CursorWindow;->acquireReference()V

    .line 357
    :try_start_17
    iget v1, p0, Lnet/sqlcipher/CursorWindow;->mStartPos:I

    sub-int v1, p1, v1

    iget-object v2, p3, Landroid/database/CharArrayBuffer;->data:[C

    array-length v2, v2

    invoke-direct {p0, v1, p2, v2, p3}, Lnet/sqlcipher/CursorWindow;->copyStringToBuffer_native(IIILandroid/database/CharArrayBuffer;)[C

    move-result-object v0

    .line 359
    .local v0, "newbuf":[C
    if-eqz v0, :cond_26

    .line 360
    iput-object v0, p3, Landroid/database/CharArrayBuffer;->data:[C
    :try_end_26
    .catchall {:try_start_17 .. :try_end_26} :catchall_2a

    .line 363
    :cond_26
    invoke-virtual {p0}, Lnet/sqlcipher/CursorWindow;->releaseReference()V

    .line 365
    return-void

    .line 363
    .end local v0    # "newbuf":[C
    :catchall_2a
    move-exception v1

    invoke-virtual {p0}, Lnet/sqlcipher/CursorWindow;->releaseReference()V

    throw v1
.end method

.method public describeContents()I
    .registers 2

    .prologue
    .line 507
    const/4 v0, 0x0

    return v0
.end method

.method protected finalize()V
    .registers 1

    .prologue
    .line 488
    invoke-direct {p0}, Lnet/sqlcipher/CursorWindow;->close_native()V

    .line 489
    return-void
.end method

.method public freeLastRow()V
    .registers 2

    .prologue
    .line 114
    invoke-virtual {p0}, Lnet/sqlcipher/CursorWindow;->acquireReference()V

    .line 116
    :try_start_3
    invoke-direct {p0}, Lnet/sqlcipher/CursorWindow;->freeLastRow_native()V
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_a

    .line 118
    invoke-virtual {p0}, Lnet/sqlcipher/CursorWindow;->releaseReference()V

    .line 120
    return-void

    .line 118
    :catchall_a
    move-exception v0

    invoke-virtual {p0}, Lnet/sqlcipher/CursorWindow;->releaseReference()V

    throw v0
.end method

.method public getBlob(II)[B
    .registers 4
    .param p1, "row"    # I
    .param p2, "col"    # I

    .prologue
    .line 241
    invoke-virtual {p0}, Lnet/sqlcipher/CursorWindow;->acquireReference()V

    .line 243
    :try_start_3
    iget v0, p0, Lnet/sqlcipher/CursorWindow;->mStartPos:I

    sub-int v0, p1, v0

    invoke-direct {p0, v0, p2}, Lnet/sqlcipher/CursorWindow;->getBlob_native(II)[B
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_f

    move-result-object v0

    .line 245
    invoke-virtual {p0}, Lnet/sqlcipher/CursorWindow;->releaseReference()V

    .line 243
    return-object v0

    .line 245
    :catchall_f
    move-exception v0

    invoke-virtual {p0}, Lnet/sqlcipher/CursorWindow;->releaseReference()V

    throw v0
.end method

.method public getDouble(II)D
    .registers 5
    .param p1, "row"    # I
    .param p2, "col"    # I

    .prologue
    .line 398
    invoke-virtual {p0}, Lnet/sqlcipher/CursorWindow;->acquireReference()V

    .line 400
    :try_start_3
    iget v0, p0, Lnet/sqlcipher/CursorWindow;->mStartPos:I

    sub-int v0, p1, v0

    invoke-direct {p0, v0, p2}, Lnet/sqlcipher/CursorWindow;->getDouble_native(II)D
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_f

    move-result-wide v0

    .line 402
    invoke-virtual {p0}, Lnet/sqlcipher/CursorWindow;->releaseReference()V

    .line 400
    return-wide v0

    .line 402
    :catchall_f
    move-exception v0

    invoke-virtual {p0}, Lnet/sqlcipher/CursorWindow;->releaseReference()V

    throw v0
.end method

.method public getFloat(II)F
    .registers 5
    .param p1, "row"    # I
    .param p2, "col"    # I

    .prologue
    .line 450
    invoke-virtual {p0}, Lnet/sqlcipher/CursorWindow;->acquireReference()V

    .line 452
    :try_start_3
    iget v0, p0, Lnet/sqlcipher/CursorWindow;->mStartPos:I

    sub-int v0, p1, v0

    invoke-direct {p0, v0, p2}, Lnet/sqlcipher/CursorWindow;->getDouble_native(II)D
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_10

    move-result-wide v0

    double-to-float v0, v0

    .line 454
    invoke-virtual {p0}, Lnet/sqlcipher/CursorWindow;->releaseReference()V

    .line 452
    return v0

    .line 454
    :catchall_10
    move-exception v0

    invoke-virtual {p0}, Lnet/sqlcipher/CursorWindow;->releaseReference()V

    throw v0
.end method

.method public getInt(II)I
    .registers 5
    .param p1, "row"    # I
    .param p2, "col"    # I

    .prologue
    .line 433
    invoke-virtual {p0}, Lnet/sqlcipher/CursorWindow;->acquireReference()V

    .line 435
    :try_start_3
    iget v0, p0, Lnet/sqlcipher/CursorWindow;->mStartPos:I

    sub-int v0, p1, v0

    invoke-direct {p0, v0, p2}, Lnet/sqlcipher/CursorWindow;->getLong_native(II)J
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_10

    move-result-wide v0

    long-to-int v0, v0

    .line 437
    invoke-virtual {p0}, Lnet/sqlcipher/CursorWindow;->releaseReference()V

    .line 435
    return v0

    .line 437
    :catchall_10
    move-exception v0

    invoke-virtual {p0}, Lnet/sqlcipher/CursorWindow;->releaseReference()V

    throw v0
.end method

.method public getLong(II)J
    .registers 5
    .param p1, "row"    # I
    .param p2, "col"    # I

    .prologue
    .line 379
    invoke-virtual {p0}, Lnet/sqlcipher/CursorWindow;->acquireReference()V

    .line 381
    :try_start_3
    iget v0, p0, Lnet/sqlcipher/CursorWindow;->mStartPos:I

    sub-int v0, p1, v0

    invoke-direct {p0, v0, p2}, Lnet/sqlcipher/CursorWindow;->getLong_native(II)J
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_f

    move-result-wide v0

    .line 383
    invoke-virtual {p0}, Lnet/sqlcipher/CursorWindow;->releaseReference()V

    .line 381
    return-wide v0

    .line 383
    :catchall_f
    move-exception v0

    invoke-virtual {p0}, Lnet/sqlcipher/CursorWindow;->releaseReference()V

    throw v0
.end method

.method public getNumRows()I
    .registers 2

    .prologue
    .line 70
    invoke-virtual {p0}, Lnet/sqlcipher/CursorWindow;->acquireReference()V

    .line 72
    :try_start_3
    invoke-direct {p0}, Lnet/sqlcipher/CursorWindow;->getNumRows_native()I
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_b

    move-result v0

    .line 74
    invoke-virtual {p0}, Lnet/sqlcipher/CursorWindow;->releaseReference()V

    .line 72
    return v0

    .line 74
    :catchall_b
    move-exception v0

    invoke-virtual {p0}, Lnet/sqlcipher/CursorWindow;->releaseReference()V

    throw v0
.end method

.method public getShort(II)S
    .registers 5
    .param p1, "row"    # I
    .param p2, "col"    # I

    .prologue
    .line 417
    invoke-virtual {p0}, Lnet/sqlcipher/CursorWindow;->acquireReference()V

    .line 419
    :try_start_3
    iget v0, p0, Lnet/sqlcipher/CursorWindow;->mStartPos:I

    sub-int v0, p1, v0

    invoke-direct {p0, v0, p2}, Lnet/sqlcipher/CursorWindow;->getLong_native(II)J
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_11

    move-result-wide v0

    long-to-int v0, v0

    int-to-short v0, v0

    .line 421
    invoke-virtual {p0}, Lnet/sqlcipher/CursorWindow;->releaseReference()V

    .line 419
    return v0

    .line 421
    :catchall_11
    move-exception v0

    invoke-virtual {p0}, Lnet/sqlcipher/CursorWindow;->releaseReference()V

    throw v0
.end method

.method public getStartPosition()I
    .registers 2

    .prologue
    .line 53
    iget v0, p0, Lnet/sqlcipher/CursorWindow;->mStartPos:I

    return v0
.end method

.method public getString(II)Ljava/lang/String;
    .registers 4
    .param p1, "row"    # I
    .param p2, "col"    # I

    .prologue
    .line 328
    invoke-virtual {p0}, Lnet/sqlcipher/CursorWindow;->acquireReference()V

    .line 330
    :try_start_3
    iget v0, p0, Lnet/sqlcipher/CursorWindow;->mStartPos:I

    sub-int v0, p1, v0

    invoke-direct {p0, v0, p2}, Lnet/sqlcipher/CursorWindow;->getString_native(II)Ljava/lang/String;
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_f

    move-result-object v0

    .line 332
    invoke-virtual {p0}, Lnet/sqlcipher/CursorWindow;->releaseReference()V

    .line 330
    return-object v0

    .line 332
    :catchall_f
    move-exception v0

    invoke-virtual {p0}, Lnet/sqlcipher/CursorWindow;->releaseReference()V

    throw v0
.end method

.method public isBlob(II)Z
    .registers 4
    .param p1, "row"    # I
    .param p2, "col"    # I

    .prologue
    .line 259
    invoke-virtual {p0}, Lnet/sqlcipher/CursorWindow;->acquireReference()V

    .line 261
    :try_start_3
    iget v0, p0, Lnet/sqlcipher/CursorWindow;->mStartPos:I

    sub-int v0, p1, v0

    invoke-direct {p0, v0, p2}, Lnet/sqlcipher/CursorWindow;->isBlob_native(II)Z
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_f

    move-result v0

    .line 263
    invoke-virtual {p0}, Lnet/sqlcipher/CursorWindow;->releaseReference()V

    .line 261
    return v0

    .line 263
    :catchall_f
    move-exception v0

    invoke-virtual {p0}, Lnet/sqlcipher/CursorWindow;->releaseReference()V

    throw v0
.end method

.method public isFloat(II)Z
    .registers 4
    .param p1, "row"    # I
    .param p2, "col"    # I

    .prologue
    .line 291
    invoke-virtual {p0}, Lnet/sqlcipher/CursorWindow;->acquireReference()V

    .line 293
    :try_start_3
    iget v0, p0, Lnet/sqlcipher/CursorWindow;->mStartPos:I

    sub-int v0, p1, v0

    invoke-direct {p0, v0, p2}, Lnet/sqlcipher/CursorWindow;->isFloat_native(II)Z
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_f

    move-result v0

    .line 295
    invoke-virtual {p0}, Lnet/sqlcipher/CursorWindow;->releaseReference()V

    .line 293
    return v0

    .line 295
    :catchall_f
    move-exception v0

    invoke-virtual {p0}, Lnet/sqlcipher/CursorWindow;->releaseReference()V

    throw v0
.end method

.method public isLong(II)Z
    .registers 4
    .param p1, "row"    # I
    .param p2, "col"    # I

    .prologue
    .line 275
    invoke-virtual {p0}, Lnet/sqlcipher/CursorWindow;->acquireReference()V

    .line 277
    :try_start_3
    iget v0, p0, Lnet/sqlcipher/CursorWindow;->mStartPos:I

    sub-int v0, p1, v0

    invoke-direct {p0, v0, p2}, Lnet/sqlcipher/CursorWindow;->isInteger_native(II)Z
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_f

    move-result v0

    .line 279
    invoke-virtual {p0}, Lnet/sqlcipher/CursorWindow;->releaseReference()V

    .line 277
    return v0

    .line 279
    :catchall_f
    move-exception v0

    invoke-virtual {p0}, Lnet/sqlcipher/CursorWindow;->releaseReference()V

    throw v0
.end method

.method public isNull(II)Z
    .registers 4
    .param p1, "row"    # I
    .param p2, "col"    # I

    .prologue
    .line 223
    invoke-virtual {p0}, Lnet/sqlcipher/CursorWindow;->acquireReference()V

    .line 225
    :try_start_3
    iget v0, p0, Lnet/sqlcipher/CursorWindow;->mStartPos:I

    sub-int v0, p1, v0

    invoke-direct {p0, v0, p2}, Lnet/sqlcipher/CursorWindow;->isNull_native(II)Z
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_f

    move-result v0

    .line 227
    invoke-virtual {p0}, Lnet/sqlcipher/CursorWindow;->releaseReference()V

    .line 225
    return v0

    .line 227
    :catchall_f
    move-exception v0

    invoke-virtual {p0}, Lnet/sqlcipher/CursorWindow;->releaseReference()V

    throw v0
.end method

.method public isString(II)Z
    .registers 4
    .param p1, "row"    # I
    .param p2, "col"    # I

    .prologue
    .line 307
    invoke-virtual {p0}, Lnet/sqlcipher/CursorWindow;->acquireReference()V

    .line 309
    :try_start_3
    iget v0, p0, Lnet/sqlcipher/CursorWindow;->mStartPos:I

    sub-int v0, p1, v0

    invoke-direct {p0, v0, p2}, Lnet/sqlcipher/CursorWindow;->isString_native(II)Z
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_f

    move-result v0

    .line 311
    invoke-virtual {p0}, Lnet/sqlcipher/CursorWindow;->releaseReference()V

    .line 309
    return v0

    .line 311
    :catchall_f
    move-exception v0

    invoke-virtual {p0}, Lnet/sqlcipher/CursorWindow;->releaseReference()V

    throw v0
.end method

.method protected onAllReferencesReleased()V
    .registers 1

    .prologue
    .line 536
    invoke-direct {p0}, Lnet/sqlcipher/CursorWindow;->close_native()V

    .line 537
    invoke-super {p0}, Landroid/database/CursorWindow;->onAllReferencesReleased()V

    .line 538
    return-void
.end method

.method public putBlob([BII)Z
    .registers 5
    .param p1, "value"    # [B
    .param p2, "row"    # I
    .param p3, "col"    # I

    .prologue
    .line 132
    invoke-virtual {p0}, Lnet/sqlcipher/CursorWindow;->acquireReference()V

    .line 134
    :try_start_3
    iget v0, p0, Lnet/sqlcipher/CursorWindow;->mStartPos:I

    sub-int v0, p2, v0

    invoke-direct {p0, p1, v0, p3}, Lnet/sqlcipher/CursorWindow;->putBlob_native([BII)Z
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_f

    move-result v0

    .line 136
    invoke-virtual {p0}, Lnet/sqlcipher/CursorWindow;->releaseReference()V

    .line 134
    return v0

    .line 136
    :catchall_f
    move-exception v0

    invoke-virtual {p0}, Lnet/sqlcipher/CursorWindow;->releaseReference()V

    throw v0
.end method

.method public putDouble(DII)Z
    .registers 6
    .param p1, "value"    # D
    .param p3, "row"    # I
    .param p4, "col"    # I

    .prologue
    .line 187
    invoke-virtual {p0}, Lnet/sqlcipher/CursorWindow;->acquireReference()V

    .line 189
    :try_start_3
    iget v0, p0, Lnet/sqlcipher/CursorWindow;->mStartPos:I

    sub-int v0, p3, v0

    invoke-direct {p0, p1, p2, v0, p4}, Lnet/sqlcipher/CursorWindow;->putDouble_native(DII)Z
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_f

    move-result v0

    .line 191
    invoke-virtual {p0}, Lnet/sqlcipher/CursorWindow;->releaseReference()V

    .line 189
    return v0

    .line 191
    :catchall_f
    move-exception v0

    invoke-virtual {p0}, Lnet/sqlcipher/CursorWindow;->releaseReference()V

    throw v0
.end method

.method public putLong(JII)Z
    .registers 6
    .param p1, "value"    # J
    .param p3, "row"    # I
    .param p4, "col"    # I

    .prologue
    .line 168
    invoke-virtual {p0}, Lnet/sqlcipher/CursorWindow;->acquireReference()V

    .line 170
    :try_start_3
    iget v0, p0, Lnet/sqlcipher/CursorWindow;->mStartPos:I

    sub-int v0, p3, v0

    invoke-direct {p0, p1, p2, v0, p4}, Lnet/sqlcipher/CursorWindow;->putLong_native(JII)Z
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_f

    move-result v0

    .line 172
    invoke-virtual {p0}, Lnet/sqlcipher/CursorWindow;->releaseReference()V

    .line 170
    return v0

    .line 172
    :catchall_f
    move-exception v0

    invoke-virtual {p0}, Lnet/sqlcipher/CursorWindow;->releaseReference()V

    throw v0
.end method

.method public putNull(II)Z
    .registers 4
    .param p1, "row"    # I
    .param p2, "col"    # I

    .prologue
    .line 204
    invoke-virtual {p0}, Lnet/sqlcipher/CursorWindow;->acquireReference()V

    .line 206
    :try_start_3
    iget v0, p0, Lnet/sqlcipher/CursorWindow;->mStartPos:I

    sub-int v0, p1, v0

    invoke-direct {p0, v0, p2}, Lnet/sqlcipher/CursorWindow;->putNull_native(II)Z
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_f

    move-result v0

    .line 208
    invoke-virtual {p0}, Lnet/sqlcipher/CursorWindow;->releaseReference()V

    .line 206
    return v0

    .line 208
    :catchall_f
    move-exception v0

    invoke-virtual {p0}, Lnet/sqlcipher/CursorWindow;->releaseReference()V

    throw v0
.end method

.method public putString(Ljava/lang/String;II)Z
    .registers 5
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "row"    # I
    .param p3, "col"    # I

    .prologue
    .line 150
    invoke-virtual {p0}, Lnet/sqlcipher/CursorWindow;->acquireReference()V

    .line 152
    :try_start_3
    iget v0, p0, Lnet/sqlcipher/CursorWindow;->mStartPos:I

    sub-int v0, p2, v0

    invoke-direct {p0, p1, v0, p3}, Lnet/sqlcipher/CursorWindow;->putString_native(Ljava/lang/String;II)Z
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_f

    move-result v0

    .line 154
    invoke-virtual {p0}, Lnet/sqlcipher/CursorWindow;->releaseReference()V

    .line 152
    return v0

    .line 154
    :catchall_f
    move-exception v0

    invoke-virtual {p0}, Lnet/sqlcipher/CursorWindow;->releaseReference()V

    throw v0
.end method

.method public setNumColumns(I)Z
    .registers 3
    .param p1, "columnNum"    # I

    .prologue
    .line 85
    invoke-virtual {p0}, Lnet/sqlcipher/CursorWindow;->acquireReference()V

    .line 87
    :try_start_3
    invoke-direct {p0, p1}, Lnet/sqlcipher/CursorWindow;->setNumColumns_native(I)Z
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_b

    move-result v0

    .line 89
    invoke-virtual {p0}, Lnet/sqlcipher/CursorWindow;->releaseReference()V

    .line 87
    return v0

    .line 89
    :catchall_b
    move-exception v0

    invoke-virtual {p0}, Lnet/sqlcipher/CursorWindow;->releaseReference()V

    throw v0
.end method

.method public setStartPosition(I)V
    .registers 2
    .param p1, "pos"    # I

    .prologue
    .line 61
    iput p1, p0, Lnet/sqlcipher/CursorWindow;->mStartPos:I

    .line 62
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 511
    invoke-direct {p0}, Lnet/sqlcipher/CursorWindow;->native_getBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 512
    iget v0, p0, Lnet/sqlcipher/CursorWindow;->mStartPos:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 513
    return-void
.end method
