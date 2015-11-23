.class public Lcom/android/settings/applications/InstalledAppDetailsFragment$MyAlertDialogFragment;
.super Landroid/app/DialogFragment;
.source "InstalledAppDetailsFragment.java"


# instance fields
.field private GF:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 697
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/android/settings/applications/InstalledAppDetailsFragment$MyAlertDialogFragment;)Z
    .locals 1

    .prologue
    .line 697
    iget-boolean v0, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment$MyAlertDialogFragment;->GF:Z

    return v0
.end method

.method public static g(II)Lcom/android/settings/applications/InstalledAppDetailsFragment$MyAlertDialogFragment;
    .locals 3

    .prologue
    .line 700
    new-instance v0, Lcom/android/settings/applications/InstalledAppDetailsFragment$MyAlertDialogFragment;

    invoke-direct {v0}, Lcom/android/settings/applications/InstalledAppDetailsFragment$MyAlertDialogFragment;-><init>()V

    .line 701
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 702
    const-string v2, "id"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 703
    const-string v2, "moveError"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 704
    invoke-virtual {v0, v1}, Lcom/android/settings/applications/InstalledAppDetailsFragment$MyAlertDialogFragment;->setArguments(Landroid/os/Bundle;)V

    .line 705
    return-object v0
.end method


# virtual methods
.method jm()Lcom/android/settings/applications/InstalledAppDetailsFragment;
    .locals 1

    .prologue
    .line 709
    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetailsFragment$MyAlertDialogFragment;->getTargetFragment()Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/settings/applications/InstalledAppDetailsFragment;

    return-object v0
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2

    .prologue
    .line 715
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCancel(Landroid/content/DialogInterface;)V

    .line 716
    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetailsFragment$MyAlertDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "id"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 717
    const/16 v1, 0x9

    if-ne v0, v1, :cond_0

    .line 718
    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetailsFragment$MyAlertDialogFragment;->jm()Lcom/android/settings/applications/InstalledAppDetailsFragment;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/applications/InstalledAppDetailsFragment;->e(Lcom/android/settings/applications/InstalledAppDetailsFragment;)Landroid/preference/CheckBoxPreference;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetailsFragment$MyAlertDialogFragment;->jm()Lcom/android/settings/applications/InstalledAppDetailsFragment;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/applications/InstalledAppDetailsFragment;->e(Lcom/android/settings/applications/InstalledAppDetailsFragment;)Landroid/preference/CheckBoxPreference;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 721
    :cond_0
    return-void

    .line 718
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 10

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x0

    const v7, 0x7f09054f

    const v6, 0x1010355

    const v5, 0x7f09054e

    .line 735
    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetailsFragment$MyAlertDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "id"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 736
    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetailsFragment$MyAlertDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "moveError"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 737
    packed-switch v0, :pswitch_data_0

    .line 875
    :pswitch_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unknown id "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 739
    :pswitch_1
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetailsFragment$MyAlertDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetailsFragment$MyAlertDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f09054c

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetailsFragment$MyAlertDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f09054d

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/settings/applications/InstalledAppDetailsFragment$MyAlertDialogFragment$1;

    invoke-direct {v1, p0}, Lcom/android/settings/applications/InstalledAppDetailsFragment$MyAlertDialogFragment$1;-><init>(Lcom/android/settings/applications/InstalledAppDetailsFragment$MyAlertDialogFragment;)V

    invoke-virtual {v0, v5, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v7, v8}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 854
    :goto_0
    return-object v0

    .line 753
    :pswitch_2
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetailsFragment$MyAlertDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetailsFragment$MyAlertDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f090553

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetailsFragment$MyAlertDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f090554

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/settings/applications/InstalledAppDetailsFragment$MyAlertDialogFragment$2;

    invoke-direct {v1, p0}, Lcom/android/settings/applications/InstalledAppDetailsFragment$MyAlertDialogFragment$2;-><init>(Lcom/android/settings/applications/InstalledAppDetailsFragment$MyAlertDialogFragment;)V

    invoke-virtual {v0, v5, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v7, v8}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_0

    .line 767
    :pswitch_3
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetailsFragment$MyAlertDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetailsFragment$MyAlertDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f090550

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetailsFragment$MyAlertDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f090550

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetailsFragment$MyAlertDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    new-instance v2, Lcom/android/settings/applications/InstalledAppDetailsFragment$MyAlertDialogFragment$3;

    invoke-direct {v2, p0}, Lcom/android/settings/applications/InstalledAppDetailsFragment$MyAlertDialogFragment$3;-><init>(Lcom/android/settings/applications/InstalledAppDetailsFragment$MyAlertDialogFragment;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_0

    .line 780
    :pswitch_4
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetailsFragment$MyAlertDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetailsFragment$MyAlertDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f090555

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetailsFragment$MyAlertDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f090556

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/settings/applications/InstalledAppDetailsFragment$MyAlertDialogFragment$4;

    invoke-direct {v1, p0}, Lcom/android/settings/applications/InstalledAppDetailsFragment$MyAlertDialogFragment$4;-><init>(Lcom/android/settings/applications/InstalledAppDetailsFragment$MyAlertDialogFragment;)V

    invoke-virtual {v0, v5, v1}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto/16 :goto_0

    .line 794
    :pswitch_5
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetailsFragment$MyAlertDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetailsFragment$MyAlertDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f09056c

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetailsFragment$MyAlertDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f09056d

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/settings/applications/InstalledAppDetailsFragment$MyAlertDialogFragment$5;

    invoke-direct {v1, p0}, Lcom/android/settings/applications/InstalledAppDetailsFragment$MyAlertDialogFragment$5;-><init>(Lcom/android/settings/applications/InstalledAppDetailsFragment$MyAlertDialogFragment;)V

    invoke-virtual {v0, v5, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v7, v8}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto/16 :goto_0

    .line 808
    :pswitch_6
    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetailsFragment$MyAlertDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v2, 0x7f09056f

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetailsFragment$MyAlertDialogFragment;->jm()Lcom/android/settings/applications/InstalledAppDetailsFragment;

    move-result-object v4

    invoke-static {v4, v1}, Lcom/android/settings/applications/InstalledAppDetailsFragment;->a(Lcom/android/settings/applications/InstalledAppDetailsFragment;I)Ljava/lang/CharSequence;

    move-result-object v1

    aput-object v1, v3, v9

    invoke-virtual {v0, v2, v3}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 810
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetailsFragment$MyAlertDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetailsFragment$MyAlertDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f09056e

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v5, v8}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto/16 :goto_0

    .line 817
    :pswitch_7
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetailsFragment$MyAlertDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetailsFragment$MyAlertDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f090572

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetailsFragment$MyAlertDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f090573

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/settings/applications/InstalledAppDetailsFragment$MyAlertDialogFragment$6;

    invoke-direct {v1, p0}, Lcom/android/settings/applications/InstalledAppDetailsFragment$MyAlertDialogFragment$6;-><init>(Lcom/android/settings/applications/InstalledAppDetailsFragment$MyAlertDialogFragment;)V

    invoke-virtual {v0, v5, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v7, v8}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto/16 :goto_0

    .line 835
    :pswitch_8
    const-string v0, ""

    .line 837
    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetailsFragment$MyAlertDialogFragment;->jm()Lcom/android/settings/applications/InstalledAppDetailsFragment;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/applications/InstalledAppDetailsFragment;->a(Lcom/android/settings/applications/InstalledAppDetailsFragment;)Lcom/android/settings/applications/ApplicationsState$AppEntry;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 838
    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetailsFragment$MyAlertDialogFragment;->jm()Lcom/android/settings/applications/InstalledAppDetailsFragment;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/applications/InstalledAppDetailsFragment;->a(Lcom/android/settings/applications/InstalledAppDetailsFragment;)Lcom/android/settings/applications/ApplicationsState$AppEntry;

    move-result-object v0

    iget-object v0, v0, Lcom/android/settings/applications/ApplicationsState$AppEntry;->label:Ljava/lang/String;

    .line 839
    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetailsFragment$MyAlertDialogFragment;->jm()Lcom/android/settings/applications/InstalledAppDetailsFragment;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/applications/InstalledAppDetailsFragment;->e(Lcom/android/settings/applications/InstalledAppDetailsFragment;)Landroid/preference/CheckBoxPreference;

    move-result-object v1

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment$MyAlertDialogFragment;->GF:Z

    .line 846
    :cond_0
    :goto_1
    iget-boolean v1, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment$MyAlertDialogFragment;->GF:Z

    if-eqz v1, :cond_2

    .line 847
    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetailsFragment$MyAlertDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f090c65

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 848
    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetailsFragment$MyAlertDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f090c67

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v0, v4, v9

    invoke-virtual {v2, v3, v4}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 854
    :goto_2
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetailsFragment$MyAlertDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/settings/applications/InstalledAppDetailsFragment$MyAlertDialogFragment$8;

    invoke-direct {v1, p0}, Lcom/android/settings/applications/InstalledAppDetailsFragment$MyAlertDialogFragment$8;-><init>(Lcom/android/settings/applications/InstalledAppDetailsFragment$MyAlertDialogFragment;)V

    invoke-virtual {v0, v5, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/settings/applications/InstalledAppDetailsFragment$MyAlertDialogFragment$7;

    invoke-direct {v1, p0}, Lcom/android/settings/applications/InstalledAppDetailsFragment$MyAlertDialogFragment$7;-><init>(Lcom/android/settings/applications/InstalledAppDetailsFragment$MyAlertDialogFragment;)V

    invoke-virtual {v0, v7, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto/16 :goto_0

    .line 840
    :cond_1
    if-eqz p1, :cond_0

    .line 841
    const-string v0, "float_window_label"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 842
    const-string v1, "float_window_enable"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment$MyAlertDialogFragment;->GF:Z

    .line 843
    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetailsFragment$MyAlertDialogFragment;->jm()Lcom/android/settings/applications/InstalledAppDetailsFragment;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/applications/InstalledAppDetailsFragment;->e(Lcom/android/settings/applications/InstalledAppDetailsFragment;)Landroid/preference/CheckBoxPreference;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment$MyAlertDialogFragment;->GF:Z

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 844
    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetailsFragment$MyAlertDialogFragment;->jm()Lcom/android/settings/applications/InstalledAppDetailsFragment;

    move-result-object v1

    invoke-static {v1, v9}, Lcom/android/settings/applications/InstalledAppDetailsFragment;->a(Lcom/android/settings/applications/InstalledAppDetailsFragment;Z)Z

    goto :goto_1

    .line 850
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetailsFragment$MyAlertDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f090c66

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 851
    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetailsFragment$MyAlertDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f090c68

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v0, v4, v9

    invoke-virtual {v2, v3, v4}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 737
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_0
        :pswitch_8
    .end packed-switch
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 728
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 729
    const-string v0, "float_window_label"

    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetailsFragment$MyAlertDialogFragment;->jm()Lcom/android/settings/applications/InstalledAppDetailsFragment;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/applications/InstalledAppDetailsFragment;->a(Lcom/android/settings/applications/InstalledAppDetailsFragment;)Lcom/android/settings/applications/ApplicationsState$AppEntry;

    move-result-object v1

    iget-object v1, v1, Lcom/android/settings/applications/ApplicationsState$AppEntry;->label:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 730
    const-string v0, "float_window_enable"

    iget-boolean v1, p0, Lcom/android/settings/applications/InstalledAppDetailsFragment$MyAlertDialogFragment;->GF:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 731
    return-void
.end method
