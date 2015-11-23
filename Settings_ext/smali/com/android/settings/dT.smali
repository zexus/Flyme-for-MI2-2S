.class Lcom/android/settings/dT;
.super Landroid/content/pm/IPackageDeleteObserver$Stub;
.source "MiuiMasterClear.java"


# instance fields
.field private qs:Lcom/android/settings/dU;

.field final synthetic qt:Lcom/android/settings/dS;


# direct methods
.method public constructor <init>(Lcom/android/settings/dS;Lcom/android/settings/dU;)V
    .locals 0

    .prologue
    .line 430
    iput-object p1, p0, Lcom/android/settings/dT;->qt:Lcom/android/settings/dS;

    invoke-direct {p0}, Landroid/content/pm/IPackageDeleteObserver$Stub;-><init>()V

    .line 431
    iput-object p2, p0, Lcom/android/settings/dT;->qs:Lcom/android/settings/dU;

    .line 432
    return-void
.end method


# virtual methods
.method public packageDeleted(Ljava/lang/String;I)V
    .locals 1

    .prologue
    .line 436
    packed-switch p2, :pswitch_data_0

    .line 444
    :pswitch_0
    iget-object v0, p0, Lcom/android/settings/dT;->qs:Lcom/android/settings/dU;

    invoke-virtual {v0}, Lcom/android/settings/dU;->finish()V

    .line 445
    return-void

    .line 436
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
