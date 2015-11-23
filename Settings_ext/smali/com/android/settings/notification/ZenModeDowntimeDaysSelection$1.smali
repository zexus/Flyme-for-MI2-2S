.class Lcom/android/settings_ext/notification/ZenModeDowntimeDaysSelection$1;
.super Ljava/lang/Object;
.source "ZenModeDowntimeDaysSelection.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field final synthetic agq:I

.field final synthetic agr:Lcom/android/settings_ext/notification/ZenModeDowntimeDaysSelection;


# direct methods
.method constructor <init>(Lcom/android/settings_ext/notification/ZenModeDowntimeDaysSelection;I)V
    .locals 0

    .prologue
    .line 66
    iput-object p1, p0, Lcom/android/settings_ext/notification/ZenModeDowntimeDaysSelection$1;->agr:Lcom/android/settings_ext/notification/ZenModeDowntimeDaysSelection;

    iput p2, p0, Lcom/android/settings_ext/notification/ZenModeDowntimeDaysSelection$1;->agq:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/settings_ext/notification/ZenModeDowntimeDaysSelection$1;->agr:Lcom/android/settings_ext/notification/ZenModeDowntimeDaysSelection;

    invoke-static {v0}, Lcom/android/settings_ext/notification/ZenModeDowntimeDaysSelection;->a(Lcom/android/settings_ext/notification/ZenModeDowntimeDaysSelection;)Landroid/util/SparseBooleanArray;

    move-result-object v0

    iget v1, p0, Lcom/android/settings_ext/notification/ZenModeDowntimeDaysSelection$1;->agq:I

    invoke-virtual {v0, v1, p2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 70
    iget-object v0, p0, Lcom/android/settings_ext/notification/ZenModeDowntimeDaysSelection$1;->agr:Lcom/android/settings_ext/notification/ZenModeDowntimeDaysSelection;

    iget-object v1, p0, Lcom/android/settings_ext/notification/ZenModeDowntimeDaysSelection$1;->agr:Lcom/android/settings_ext/notification/ZenModeDowntimeDaysSelection;

    invoke-static {v1}, Lcom/android/settings_ext/notification/ZenModeDowntimeDaysSelection;->b(Lcom/android/settings_ext/notification/ZenModeDowntimeDaysSelection;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings_ext/notification/ZenModeDowntimeDaysSelection;->aT(Ljava/lang/String;)V

    .line 71
    return-void
.end method
