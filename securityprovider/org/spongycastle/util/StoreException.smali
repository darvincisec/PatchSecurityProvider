.class public Lorg/spongycastle/util/StoreException;
.super Ljava/lang/RuntimeException;
.source "StoreException.java"


# instance fields
.field private _e:Ljava/lang/Throwable;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "cause"    # Ljava/lang/Throwable;

    .prologue
    .line 19
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 20
    iput-object p2, p0, Lorg/spongycastle/util/StoreException;->_e:Ljava/lang/Throwable;

    .line 21
    return-void
.end method


# virtual methods
.method public getCause()Ljava/lang/Throwable;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lorg/spongycastle/util/StoreException;->_e:Ljava/lang/Throwable;

    return-object v0
.end method
