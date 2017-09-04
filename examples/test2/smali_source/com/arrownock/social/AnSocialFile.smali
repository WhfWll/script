.class public Lcom/arrownock/social/AnSocialFile;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/io/InputStream;

.field private a:Ljava/lang/String;

.field private a:[B


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-class v0, Lcom/arrownock/social/AnSocialFile;

    const v1, 0xdd

    invoke-static {v0, v1}, Lcom/bangcle/andjni/JniLib;->a(Ljava/lang/Class;I)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/io/InputStream;)V
    .registers 3
    .param p1, "fileName"    # Ljava/lang/String;
    .param p2, "inputStream"    # Ljava/io/InputStream;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/arrownock/social/AnSocialFile;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/arrownock/social/AnSocialFile;->a:Ljava/io/InputStream;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[B)V
    .registers 3
    .param p1, "fileName"    # Ljava/lang/String;
    .param p2, "data"    # [B

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/arrownock/social/AnSocialFile;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/arrownock/social/AnSocialFile;->a:[B

    return-void
.end method


# virtual methods
.method public native getData()[B
.end method

.method public native getFileName()Ljava/lang/String;
.end method

.method public native getInputStream()Ljava/io/InputStream;
.end method

.method public native setData([B)V
.end method

.method public native setFileName(Ljava/lang/String;)V
.end method

.method public native setInputStream(Ljava/io/InputStream;)V
.end method
