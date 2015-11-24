.class Lcom/android/settings_ext/dT;
.super Landroid/content/pm/IPackageDeleteObserver$Stub;
.source "MiuiMasterClear.java"


# instance fields
.field private qs:Lcom/android/settings_ext/dU;

.field final synthetic qt:Lcom/android/settings_ext/dS;


# direct methods
.method public constructor <init>(Lcom/android/settings_ext/dS;Lcom/android/settings_ext/dU;)V
    .locals 0

    .prologue
    .line 430
    iput-object p1, p0, Lcom/android/settings_ext/dT;->qt:Lcom/android/settings_ext/dS;

    invoke-direct {p0}, Landroid/content/pm/IPackageDeleteObserver$Stub;-><init>()V

    .line 431
    iput-object p2, p0, Lcom/android/settings_ext/dT;->qs:Lcom/android/settings_ext/dU;

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
    iget-object v0, p0, Lcom/android/settings_ext/dT;->qs:Lcom/android/settings_ext/dU;

    invoke-virtual {v0}, Lcom/android/settings_ext/dU;->finish()V

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
