.class public Lorg/spongycastle/jcajce/provider/symmetric/ARIA$ECB;
.super Lorg/spongycastle/jcajce/provider/symmetric/util/BaseBlockCipher;
.source "ARIA.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/spongycastle/jcajce/provider/symmetric/ARIA;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ECB"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 50
    new-instance v0, Lorg/spongycastle/jcajce/provider/symmetric/ARIA$ECB$1;

    invoke-direct {v0}, Lorg/spongycastle/jcajce/provider/symmetric/ARIA$ECB$1;-><init>()V

    invoke-direct {p0, v0}, Lorg/spongycastle/jcajce/provider/symmetric/util/BaseBlockCipher;-><init>(Lorg/spongycastle/jcajce/provider/symmetric/util/BlockCipherProvider;)V

    .line 57
    return-void
.end method
