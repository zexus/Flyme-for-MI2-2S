.class Lcom/android/settings_ext/ivan/PowerModeSettings$1;
.super Ljava/lang/Object;
.source "PowerModeSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ext/ivan/PowerModeSettings;->createPowerModeDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ext/ivan/PowerModeSettings;


# direct methods
.method constructor <init>(Lcom/android/settings_ext/ivan/PowerModeSettings;)V
    .locals 0

    .prologue
    .line 44
    iput-object p1, p0, Lcom/android/settings_ext/ivan/PowerModeSettings$1;->this$0:Lcom/android/settings_ext/ivan/PowerModeSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "clickedIndex"    # I

    .prologue
    .line 46
    iget-object v1, p0, Lcom/android/settings_ext/ivan/PowerModeSettings$1;->this$0:Lcom/android/settings_ext/ivan/PowerModeSettings;

    # getter for: Lcom/android/settings_ext/ivan/PowerModeSettings;->mEntryValues:[Ljava/lang/CharSequence;
    invoke-static {v1}, Lcom/android/settings_ext/ivan/PowerModeSettings;->access$000(Lcom/android/settings_ext/ivan/PowerModeSettings;)[Ljava/lang/CharSequence;

    move-result-object v1

    array-length v1, v1

    if-ge p2, v1, :cond_0

    if-ltz p2, :cond_0

    .line 47
    iget-object v1, p0, Lcom/android/settings_ext/ivan/PowerModeSettings$1;->this$0:Lcom/android/settings_ext/ivan/PowerModeSettings;

    # getter for: Lcom/android/settings_ext/ivan/PowerModeSettings;->mEntryValues:[Ljava/lang/CharSequence;
    invoke-static {v1}, Lcom/android/settings_ext/ivan/PowerModeSettings;->access$000(Lcom/android/settings_ext/ivan/PowerModeSettings;)[Ljava/lang/CharSequence;

    move-result-object v1

    aget-object v1, v1, p2

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 48
    .local v0, "powerMode":Ljava/lang/String;
    const-string v1, "persist.sys.aries.power_profile"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    .end local v0    # "powerMode":Ljava/lang/String;
    :cond_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 51
    iget-object v1, p0, Lcom/android/settings_ext/ivan/PowerModeSettings$1;->this$0:Lcom/android/settings_ext/ivan/PowerModeSettings;

    invoke-virtual {v1}, Lcom/android/settings_ext/ivan/PowerModeSettings;->finish()V

    .line 52
    return-void
.end method
