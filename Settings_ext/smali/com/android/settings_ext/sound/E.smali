.class Lcom/android/settings_ext/sound/E;
.super Ljava/lang/Object;
.source "RingerVolumeFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic ajT:Lcom/android/settings_ext/sound/RingerVolumeFragment;


# direct methods
.method constructor <init>(Lcom/android/settings_ext/sound/RingerVolumeFragment;)V
    .locals 0

    .prologue
    .line 218
    iput-object p1, p0, Lcom/android/settings_ext/sound/E;->ajT:Lcom/android/settings_ext/sound/RingerVolumeFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .prologue
    .line 222
    iget-object v0, p0, Lcom/android/settings_ext/sound/E;->ajT:Lcom/android/settings_ext/sound/RingerVolumeFragment;

    invoke-virtual {v0}, Lcom/android/settings_ext/sound/RingerVolumeFragment;->rN()V

    .line 223
    return-void
.end method
