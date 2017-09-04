.class public abstract Lss/ss/ss/d$b;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lss/ss/ss/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "b"
.end annotation


# static fields
.field public static final a:Lss/ss/ss/d$b;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lss/ss/ss/l;

    invoke-direct {v0}, Lss/ss/ss/l;-><init>()V

    sput-object v0, Lss/ss/ss/d$b;->a:Lss/ss/ss/d$b;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lss/ss/ss/d;)V
    .registers 2

    return-void
.end method

.method public abstract a(Lss/ss/ss/p;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
