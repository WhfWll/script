.class public Lcom/lidroid/xutils/db/converter/ByteArrayColumnConverter;
.super Ljava/lang/Object;
.source "ByteArrayColumnConverter.java"

# interfaces
.implements Lcom/lidroid/xutils/db/converter/ColumnConverter;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/lidroid/xutils/db/converter/ColumnConverter",
        "<[B>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic fieldValue2ColumnValue(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .prologue
    .line 1
    check-cast p1, [B

    invoke-virtual {p0, p1}, Lcom/lidroid/xutils/db/converter/ByteArrayColumnConverter;->fieldValue2ColumnValue([B)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public fieldValue2ColumnValue([B)Ljava/lang/Object;
    .registers 2
    .param p1, "fieldValue"    # [B

    .prologue
    .line 24
    return-object p1
.end method

.method public getColumnDbType()Lcom/lidroid/xutils/db/sqlite/ColumnDbType;
    .registers 2

    .prologue
    .line 29
    sget-object v0, Lcom/lidroid/xutils/db/sqlite/ColumnDbType;->BLOB:Lcom/lidroid/xutils/db/sqlite/ColumnDbType;

    return-object v0
.end method

.method public bridge synthetic getFieldValue(Landroid/database/Cursor;I)Ljava/lang/Object;
    .registers 4

    .prologue
    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/lidroid/xutils/db/converter/ByteArrayColumnConverter;->getFieldValue(Landroid/database/Cursor;I)[B

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getFieldValue(Ljava/lang/String;)Ljava/lang/Object;
    .registers 3

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/lidroid/xutils/db/converter/ByteArrayColumnConverter;->getFieldValue(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method public getFieldValue(Landroid/database/Cursor;I)[B
    .registers 4
    .param p1, "cursor"    # Landroid/database/Cursor;
    .param p2, "index"    # I

    .prologue
    .line 14
    invoke-interface {p1, p2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x0

    :goto_7
    return-object v0

    :cond_8
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v0

    goto :goto_7
.end method

.method public getFieldValue(Ljava/lang/String;)[B
    .registers 3
    .param p1, "fieldStringValue"    # Ljava/lang/String;

    .prologue
    .line 19
    const/4 v0, 0x0

    return-object v0
.end method
