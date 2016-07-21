package im.actor.core.api;
/*
 *  Generated by the Actor API Scheme generator.  DO NOT EDIT!
 */

import im.actor.runtime.bser.*;
import im.actor.runtime.collections.*;
import static im.actor.runtime.bser.Utils.*;
import im.actor.core.network.parser.*;
import org.jetbrains.annotations.Nullable;
import org.jetbrains.annotations.NotNull;
import com.google.j2objc.annotations.ObjectiveCName;
import java.io.IOException;
import java.util.List;
import java.util.ArrayList;

public class ApiGroup extends BserObject {

    private int id;
    private long accessHash;
    private String title;
    private ApiAvatar avatar;
    private Integer membersCount;
    private Boolean isMember;
    private Boolean isHidden;
    private ApiGroupType groupType;
    private Boolean canSendMessage;
    private Boolean isDeleted;
    private ApiMapValue ext;

    public ApiGroup(int id, long accessHash, @NotNull String title, @Nullable ApiAvatar avatar, @Nullable Integer membersCount, @Nullable Boolean isMember, @Nullable Boolean isHidden, @Nullable ApiGroupType groupType, @Nullable Boolean canSendMessage, @Nullable Boolean isDeleted, @Nullable ApiMapValue ext) {
        this.id = id;
        this.accessHash = accessHash;
        this.title = title;
        this.avatar = avatar;
        this.membersCount = membersCount;
        this.isMember = isMember;
        this.isHidden = isHidden;
        this.groupType = groupType;
        this.canSendMessage = canSendMessage;
        this.isDeleted = isDeleted;
        this.ext = ext;
    }

    public ApiGroup() {

    }

    public int getId() {
        return this.id;
    }

    public long getAccessHash() {
        return this.accessHash;
    }

    @NotNull
    public String getTitle() {
        return this.title;
    }

    @Nullable
    public ApiAvatar getAvatar() {
        return this.avatar;
    }

    @Nullable
    public Integer getMembersCount() {
        return this.membersCount;
    }

    @Nullable
    public Boolean isMember() {
        return this.isMember;
    }

    @Nullable
    public Boolean isHidden() {
        return this.isHidden;
    }

    @Nullable
    public ApiGroupType getGroupType() {
        return this.groupType;
    }

    @Nullable
    public Boolean canSendMessage() {
        return this.canSendMessage;
    }

    @Nullable
    public Boolean isDeleted() {
        return this.isDeleted;
    }

    @Nullable
    public ApiMapValue getExt() {
        return this.ext;
    }

    @Override
    public void parse(BserValues values) throws IOException {
        this.id = values.getInt(1);
        this.accessHash = values.getLong(2);
        this.title = values.getString(3);
        this.avatar = values.optObj(4, new ApiAvatar());
        this.membersCount = values.optInt(24);
        this.isMember = values.optBool(6);
        this.isHidden = values.optBool(20);
        int val_groupType = values.getInt(25, 0);
        if (val_groupType != 0) {
            this.groupType = ApiGroupType.parse(val_groupType);
        }
        this.canSendMessage = values.optBool(26);
        this.isDeleted = values.optBool(27);
        this.ext = values.optObj(22, new ApiMapValue());
        if (values.hasRemaining()) {
            setUnmappedObjects(values.buildRemaining());
        }
    }

    @Override
    public void serialize(BserWriter writer) throws IOException {
        writer.writeInt(1, this.id);
        writer.writeLong(2, this.accessHash);
        if (this.title == null) {
            throw new IOException();
        }
        writer.writeString(3, this.title);
        if (this.avatar != null) {
            writer.writeObject(4, this.avatar);
        }
        if (this.membersCount != null) {
            writer.writeInt(24, this.membersCount);
        }
        if (this.isMember != null) {
            writer.writeBool(6, this.isMember);
        }
        if (this.isHidden != null) {
            writer.writeBool(20, this.isHidden);
        }
        if (this.groupType != null) {
            writer.writeInt(25, this.groupType.getValue());
        }
        if (this.canSendMessage != null) {
            writer.writeBool(26, this.canSendMessage);
        }
        if (this.isDeleted != null) {
            writer.writeBool(27, this.isDeleted);
        }
        if (this.ext != null) {
            writer.writeObject(22, this.ext);
        }
        if (this.getUnmappedObjects() != null) {
            SparseArray<Object> unmapped = this.getUnmappedObjects();
            for (int i = 0; i < unmapped.size(); i++) {
                int key = unmapped.keyAt(i);
                writer.writeUnmapped(key, unmapped.get(key));
            }
        }
    }

    @Override
    public String toString() {
        String res = "struct Group{";
        res += "id=" + this.id;
        res += ", title=" + this.title;
        res += ", avatar=" + (this.avatar != null ? "set":"empty");
        res += ", membersCount=" + this.membersCount;
        res += ", isMember=" + this.isMember;
        res += ", isHidden=" + this.isHidden;
        res += ", groupType=" + this.groupType;
        res += ", canSendMessage=" + this.canSendMessage;
        res += ", isDeleted=" + this.isDeleted;
        res += ", ext=" + this.ext;
        res += "}";
        return res;
    }

}
