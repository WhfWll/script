.class public Lcom/tl/uic/model/TLFCacheFile;
.super Ljava/lang/Object;
.source "TLFCacheFile.java"

# interfaces
.implements Lcom/tl/uic/model/ModelBase;
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x606fd8b96a0aef31L


# instance fields
.field private _isImage:Ljava/lang/Boolean;

.field private data:Ljava/lang/Object;

.field private directory:Ljava/lang/String;

.field private fileName:Ljava/lang/String;

.field private sessionId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-class v0, Lcom/tl/uic/model/TLFCacheFile;

    const v1, 0x41a

    invoke-static {v0, v1}, Lcom/bangcle/andjni/JniLib;->a(Ljava/lang/Class;I)V

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/tl/uic/model/TLFCacheFile;->_isImage:Ljava/lang/Boolean;

    .line 24
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Ljava/lang/String;)V
    .registers 4
    .param p1, "data"    # Ljava/lang/Object;
    .param p2, "sessionId"    # Ljava/lang/String;

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/tl/uic/model/TLFCacheFile;->_isImage:Ljava/lang/Boolean;

    .line 34
    iput-object p1, p0, Lcom/tl/uic/model/TLFCacheFile;->data:Ljava/lang/Object;

    .line 35
    iput-object p2, p0, Lcom/tl/uic/model/TLFCacheFile;->sessionId:Ljava/lang/String;

    .line 36
    return-void
.end method


# virtual methods
.method public final native clean()Ljava/lang/Boolean;
.end method

.method public final native getData()Ljava/lang/Object;
.end method

.method public final native getDirectory()Ljava/lang/String;
.end method

.method public final native getFileName()Ljava/lang/String;
.end method

.method public final native getSessionId()Ljava/lang/String;
.end method

.method public final native isImage()Ljava/lang/Boolean;
.end method

.method public final native isImage(Ljava/lang/Boolean;)V
.end method

.method public final native setData(Ljava/lang/Object;)V
.end method

.method public final native setDirectory(Ljava/lang/String;)V
.end method

.method public final native setFileName(Ljava/lang/String;)V
.end method

.method public final native setSessionId(Ljava/lang/String;)V
.end method
