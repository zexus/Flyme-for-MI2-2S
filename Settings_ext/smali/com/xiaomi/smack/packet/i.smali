.class public Lcom/xiaomi/smack/packet/i;
.super Ljava/lang/Object;
.source "XMPPError.java"


# static fields
.field public static final aNI:Lcom/xiaomi/smack/packet/i;

.field public static final aNJ:Lcom/xiaomi/smack/packet/i;

.field public static final aNK:Lcom/xiaomi/smack/packet/i;

.field public static final aNL:Lcom/xiaomi/smack/packet/i;

.field public static final aNM:Lcom/xiaomi/smack/packet/i;

.field public static final aNN:Lcom/xiaomi/smack/packet/i;

.field public static final aNO:Lcom/xiaomi/smack/packet/i;

.field public static final aNP:Lcom/xiaomi/smack/packet/i;

.field public static final aNQ:Lcom/xiaomi/smack/packet/i;

.field public static final aNR:Lcom/xiaomi/smack/packet/i;

.field public static final aNS:Lcom/xiaomi/smack/packet/i;

.field public static final aNT:Lcom/xiaomi/smack/packet/i;

.field public static final aNU:Lcom/xiaomi/smack/packet/i;

.field public static final aNV:Lcom/xiaomi/smack/packet/i;

.field public static final aNW:Lcom/xiaomi/smack/packet/i;

.field public static final aNX:Lcom/xiaomi/smack/packet/i;

.field public static final aNY:Lcom/xiaomi/smack/packet/i;

.field public static final aNZ:Lcom/xiaomi/smack/packet/i;

.field public static final aOa:Lcom/xiaomi/smack/packet/i;

.field public static final aOb:Lcom/xiaomi/smack/packet/i;

.field public static final aOc:Lcom/xiaomi/smack/packet/i;

.field public static final aOd:Lcom/xiaomi/smack/packet/i;

.field public static final aOe:Lcom/xiaomi/smack/packet/i;

.field public static final aOf:Lcom/xiaomi/smack/packet/i;


# instance fields
.field private value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 460
    new-instance v0, Lcom/xiaomi/smack/packet/i;

    const-string v1, "internal-server-error"

    invoke-direct {v0, v1}, Lcom/xiaomi/smack/packet/i;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/xiaomi/smack/packet/i;->aNI:Lcom/xiaomi/smack/packet/i;

    .line 461
    new-instance v0, Lcom/xiaomi/smack/packet/i;

    const-string v1, "forbidden"

    invoke-direct {v0, v1}, Lcom/xiaomi/smack/packet/i;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/xiaomi/smack/packet/i;->aNJ:Lcom/xiaomi/smack/packet/i;

    .line 462
    new-instance v0, Lcom/xiaomi/smack/packet/i;

    const-string v1, "bad-request"

    invoke-direct {v0, v1}, Lcom/xiaomi/smack/packet/i;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/xiaomi/smack/packet/i;->aNK:Lcom/xiaomi/smack/packet/i;

    .line 463
    new-instance v0, Lcom/xiaomi/smack/packet/i;

    const-string v1, "conflict"

    invoke-direct {v0, v1}, Lcom/xiaomi/smack/packet/i;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/xiaomi/smack/packet/i;->aNL:Lcom/xiaomi/smack/packet/i;

    .line 464
    new-instance v0, Lcom/xiaomi/smack/packet/i;

    const-string v1, "feature-not-implemented"

    invoke-direct {v0, v1}, Lcom/xiaomi/smack/packet/i;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/xiaomi/smack/packet/i;->aNM:Lcom/xiaomi/smack/packet/i;

    .line 466
    new-instance v0, Lcom/xiaomi/smack/packet/i;

    const-string v1, "gone"

    invoke-direct {v0, v1}, Lcom/xiaomi/smack/packet/i;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/xiaomi/smack/packet/i;->aNN:Lcom/xiaomi/smack/packet/i;

    .line 467
    new-instance v0, Lcom/xiaomi/smack/packet/i;

    const-string v1, "item-not-found"

    invoke-direct {v0, v1}, Lcom/xiaomi/smack/packet/i;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/xiaomi/smack/packet/i;->aNO:Lcom/xiaomi/smack/packet/i;

    .line 468
    new-instance v0, Lcom/xiaomi/smack/packet/i;

    const-string v1, "jid-malformed"

    invoke-direct {v0, v1}, Lcom/xiaomi/smack/packet/i;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/xiaomi/smack/packet/i;->aNP:Lcom/xiaomi/smack/packet/i;

    .line 469
    new-instance v0, Lcom/xiaomi/smack/packet/i;

    const-string v1, "not-acceptable"

    invoke-direct {v0, v1}, Lcom/xiaomi/smack/packet/i;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/xiaomi/smack/packet/i;->aNQ:Lcom/xiaomi/smack/packet/i;

    .line 470
    new-instance v0, Lcom/xiaomi/smack/packet/i;

    const-string v1, "not-allowed"

    invoke-direct {v0, v1}, Lcom/xiaomi/smack/packet/i;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/xiaomi/smack/packet/i;->aNR:Lcom/xiaomi/smack/packet/i;

    .line 471
    new-instance v0, Lcom/xiaomi/smack/packet/i;

    const-string v1, "not-authorized"

    invoke-direct {v0, v1}, Lcom/xiaomi/smack/packet/i;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/xiaomi/smack/packet/i;->aNS:Lcom/xiaomi/smack/packet/i;

    .line 472
    new-instance v0, Lcom/xiaomi/smack/packet/i;

    const-string v1, "payment-required"

    invoke-direct {v0, v1}, Lcom/xiaomi/smack/packet/i;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/xiaomi/smack/packet/i;->aNT:Lcom/xiaomi/smack/packet/i;

    .line 473
    new-instance v0, Lcom/xiaomi/smack/packet/i;

    const-string v1, "recipient-unavailable"

    invoke-direct {v0, v1}, Lcom/xiaomi/smack/packet/i;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/xiaomi/smack/packet/i;->aNU:Lcom/xiaomi/smack/packet/i;

    .line 474
    new-instance v0, Lcom/xiaomi/smack/packet/i;

    const-string v1, "redirect"

    invoke-direct {v0, v1}, Lcom/xiaomi/smack/packet/i;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/xiaomi/smack/packet/i;->aNV:Lcom/xiaomi/smack/packet/i;

    .line 475
    new-instance v0, Lcom/xiaomi/smack/packet/i;

    const-string v1, "registration-required"

    invoke-direct {v0, v1}, Lcom/xiaomi/smack/packet/i;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/xiaomi/smack/packet/i;->aNW:Lcom/xiaomi/smack/packet/i;

    .line 476
    new-instance v0, Lcom/xiaomi/smack/packet/i;

    const-string v1, "remote-server-error"

    invoke-direct {v0, v1}, Lcom/xiaomi/smack/packet/i;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/xiaomi/smack/packet/i;->aNX:Lcom/xiaomi/smack/packet/i;

    .line 477
    new-instance v0, Lcom/xiaomi/smack/packet/i;

    const-string v1, "remote-server-not-found"

    invoke-direct {v0, v1}, Lcom/xiaomi/smack/packet/i;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/xiaomi/smack/packet/i;->aNY:Lcom/xiaomi/smack/packet/i;

    .line 479
    new-instance v0, Lcom/xiaomi/smack/packet/i;

    const-string v1, "remote-server-timeout"

    invoke-direct {v0, v1}, Lcom/xiaomi/smack/packet/i;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/xiaomi/smack/packet/i;->aNZ:Lcom/xiaomi/smack/packet/i;

    .line 480
    new-instance v0, Lcom/xiaomi/smack/packet/i;

    const-string v1, "resource-constraint"

    invoke-direct {v0, v1}, Lcom/xiaomi/smack/packet/i;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/xiaomi/smack/packet/i;->aOa:Lcom/xiaomi/smack/packet/i;

    .line 481
    new-instance v0, Lcom/xiaomi/smack/packet/i;

    const-string v1, "service-unavailable"

    invoke-direct {v0, v1}, Lcom/xiaomi/smack/packet/i;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/xiaomi/smack/packet/i;->aOb:Lcom/xiaomi/smack/packet/i;

    .line 482
    new-instance v0, Lcom/xiaomi/smack/packet/i;

    const-string v1, "subscription-required"

    invoke-direct {v0, v1}, Lcom/xiaomi/smack/packet/i;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/xiaomi/smack/packet/i;->aOc:Lcom/xiaomi/smack/packet/i;

    .line 483
    new-instance v0, Lcom/xiaomi/smack/packet/i;

    const-string v1, "undefined-condition"

    invoke-direct {v0, v1}, Lcom/xiaomi/smack/packet/i;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/xiaomi/smack/packet/i;->aOd:Lcom/xiaomi/smack/packet/i;

    .line 484
    new-instance v0, Lcom/xiaomi/smack/packet/i;

    const-string v1, "unexpected-request"

    invoke-direct {v0, v1}, Lcom/xiaomi/smack/packet/i;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/xiaomi/smack/packet/i;->aOe:Lcom/xiaomi/smack/packet/i;

    .line 485
    new-instance v0, Lcom/xiaomi/smack/packet/i;

    const-string v1, "request-timeout"

    invoke-direct {v0, v1}, Lcom/xiaomi/smack/packet/i;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/xiaomi/smack/packet/i;->aOf:Lcom/xiaomi/smack/packet/i;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 489
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 490
    iput-object p1, p0, Lcom/xiaomi/smack/packet/i;->value:Ljava/lang/String;

    .line 491
    return-void
.end method

.method static synthetic b(Lcom/xiaomi/smack/packet/i;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 458
    iget-object v0, p0, Lcom/xiaomi/smack/packet/i;->value:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 494
    iget-object v0, p0, Lcom/xiaomi/smack/packet/i;->value:Ljava/lang/String;

    return-object v0
.end method
