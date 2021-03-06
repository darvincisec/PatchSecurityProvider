.class public Lorg/spongycastle/asn1/cmp/RevDetails;
.super Lorg/spongycastle/asn1/ASN1Object;
.source "RevDetails.java"


# instance fields
.field private certDetails:Lorg/spongycastle/asn1/crmf/CertTemplate;

.field private crlEntryDetails:Lorg/spongycastle/asn1/x509/Extensions;


# direct methods
.method private constructor <init>(Lorg/spongycastle/asn1/ASN1Sequence;)V
    .locals 2
    .param p1, "seq"    # Lorg/spongycastle/asn1/ASN1Sequence;

    .prologue
    const/4 v1, 0x1

    .line 19
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Object;-><init>()V

    .line 20
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/asn1/crmf/CertTemplate;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/crmf/CertTemplate;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/asn1/cmp/RevDetails;->certDetails:Lorg/spongycastle/asn1/crmf/CertTemplate;

    .line 21
    invoke-virtual {p1}, Lorg/spongycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    if-le v0, v1, :cond_0

    .line 23
    invoke-virtual {p1, v1}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/asn1/x509/Extensions;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/x509/Extensions;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/asn1/cmp/RevDetails;->crlEntryDetails:Lorg/spongycastle/asn1/x509/Extensions;

    .line 25
    :cond_0
    return-void
.end method

.method public constructor <init>(Lorg/spongycastle/asn1/crmf/CertTemplate;)V
    .locals 0
    .param p1, "certDetails"    # Lorg/spongycastle/asn1/crmf/CertTemplate;

    .prologue
    .line 43
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Object;-><init>()V

    .line 44
    iput-object p1, p0, Lorg/spongycastle/asn1/cmp/RevDetails;->certDetails:Lorg/spongycastle/asn1/crmf/CertTemplate;

    .line 45
    return-void
.end method

.method public constructor <init>(Lorg/spongycastle/asn1/crmf/CertTemplate;Lorg/spongycastle/asn1/x509/Extensions;)V
    .locals 0
    .param p1, "certDetails"    # Lorg/spongycastle/asn1/crmf/CertTemplate;
    .param p2, "crlEntryDetails"    # Lorg/spongycastle/asn1/x509/Extensions;

    .prologue
    .line 59
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Object;-><init>()V

    .line 60
    iput-object p1, p0, Lorg/spongycastle/asn1/cmp/RevDetails;->certDetails:Lorg/spongycastle/asn1/crmf/CertTemplate;

    .line 61
    iput-object p2, p0, Lorg/spongycastle/asn1/cmp/RevDetails;->crlEntryDetails:Lorg/spongycastle/asn1/x509/Extensions;

    .line 62
    return-void
.end method

.method public constructor <init>(Lorg/spongycastle/asn1/crmf/CertTemplate;Lorg/spongycastle/asn1/x509/X509Extensions;)V
    .locals 1
    .param p1, "certDetails"    # Lorg/spongycastle/asn1/crmf/CertTemplate;
    .param p2, "crlEntryDetails"    # Lorg/spongycastle/asn1/x509/X509Extensions;

    .prologue
    .line 53
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Object;-><init>()V

    .line 54
    iput-object p1, p0, Lorg/spongycastle/asn1/cmp/RevDetails;->certDetails:Lorg/spongycastle/asn1/crmf/CertTemplate;

    .line 55
    invoke-virtual {p2}, Lorg/spongycastle/asn1/x509/X509Extensions;->toASN1Primitive()Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/asn1/x509/Extensions;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/x509/Extensions;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/asn1/cmp/RevDetails;->crlEntryDetails:Lorg/spongycastle/asn1/x509/Extensions;

    .line 56
    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/cmp/RevDetails;
    .locals 2
    .param p0, "o"    # Ljava/lang/Object;

    .prologue
    .line 29
    instance-of v0, p0, Lorg/spongycastle/asn1/cmp/RevDetails;

    if-eqz v0, :cond_0

    .line 31
    check-cast p0, Lorg/spongycastle/asn1/cmp/RevDetails;

    .line 39
    .end local p0    # "o":Ljava/lang/Object;
    :goto_0
    return-object p0

    .line 34
    .restart local p0    # "o":Ljava/lang/Object;
    :cond_0
    if-eqz p0, :cond_1

    .line 36
    new-instance v0, Lorg/spongycastle/asn1/cmp/RevDetails;

    invoke-static {p0}, Lorg/spongycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1Sequence;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/cmp/RevDetails;-><init>(Lorg/spongycastle/asn1/ASN1Sequence;)V

    move-object p0, v0

    goto :goto_0

    .line 39
    :cond_1
    const/4 p0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getCertDetails()Lorg/spongycastle/asn1/crmf/CertTemplate;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lorg/spongycastle/asn1/cmp/RevDetails;->certDetails:Lorg/spongycastle/asn1/crmf/CertTemplate;

    return-object v0
.end method

.method public getCrlEntryDetails()Lorg/spongycastle/asn1/x509/Extensions;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lorg/spongycastle/asn1/cmp/RevDetails;->crlEntryDetails:Lorg/spongycastle/asn1/x509/Extensions;

    return-object v0
.end method

.method public toASN1Primitive()Lorg/spongycastle/asn1/ASN1Primitive;
    .locals 2

    .prologue
    .line 89
    new-instance v0, Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 91
    .local v0, "v":Lorg/spongycastle/asn1/ASN1EncodableVector;
    iget-object v1, p0, Lorg/spongycastle/asn1/cmp/RevDetails;->certDetails:Lorg/spongycastle/asn1/crmf/CertTemplate;

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 93
    iget-object v1, p0, Lorg/spongycastle/asn1/cmp/RevDetails;->crlEntryDetails:Lorg/spongycastle/asn1/x509/Extensions;

    if-eqz v1, :cond_0

    .line 95
    iget-object v1, p0, Lorg/spongycastle/asn1/cmp/RevDetails;->crlEntryDetails:Lorg/spongycastle/asn1/x509/Extensions;

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 98
    :cond_0
    new-instance v1, Lorg/spongycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lorg/spongycastle/asn1/DERSequence;-><init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V

    return-object v1
.end method
