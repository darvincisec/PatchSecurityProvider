.class public Lorg/spongycastle/jcajce/provider/symmetric/Blowfish$AlgParams;
.super Lorg/spongycastle/jcajce/provider/symmetric/util/IvAlgorithmParameters;
.source "Blowfish.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/spongycastle/jcajce/provider/symmetric/Blowfish;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AlgParams"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 57
    invoke-direct {p0}, Lorg/spongycastle/jcajce/provider/symmetric/util/IvAlgorithmParameters;-><init>()V

    return-void
.end method


# virtual methods
.method protected engineToString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 62
    const-string v0, "Blowfish IV"

    return-object v0
.end method
