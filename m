Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id D89CDD60F0
	for <lists+tipc-discussion@lfdr.de>; Mon, 14 Oct 2019 13:08:03 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1iJyCm-0001Ma-3Z; Mon, 14 Oct 2019 11:08:00 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <tuong.t.lien@dektech.com.au>) id 1iJyCj-0001MN-RV
 for tipc-discussion@lists.sourceforge.net; Mon, 14 Oct 2019 11:07:57 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=References:In-Reply-To:Message-Id:Date:Subject:To:
 From:Sender:Reply-To:Cc:MIME-Version:Content-Type:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=9L4azVrt4KWsbcua7tFMR6beqOL3NCXDHEHbBIXYVgU=; b=Gj37GQnJ+ppw7fVYaZPAsodqQt
 5zXJl8kNiAz9PSYmbQqYHeMXwEYCWT9M9S3HW8s7F7LAUtfNuICp6y03WdSPr6IdVHjPoK/IZIjVg
 7uPsGnA+n2SvcbHO+1gZp/Ch42oDXYp95K3XYM8WmK7hLgUcucBpfCBkCbCNT7efVU0Y=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=References:In-Reply-To:Message-Id:Date:Subject:To:From:Sender:Reply-To:Cc
 :MIME-Version:Content-Type:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=9L4azVrt4KWsbcua7tFMR6beqOL3NCXDHEHbBIXYVgU=; b=bWJzFcXOuQ/ysjm1pl9vohQ6Ht
 QFpjSa6DWp/nedkJVi1RJbKRSOcahXzs2E0vWwOFRhIC/bsDEyYDa74G35qYMT8Qr70JDgAsIahOb
 4NNshvxXrxVHlGIE8AK9TcTDh4qnUPbgoDNwb9Y48z8sU9jnidELmRTuXXnG1GGjmriY=;
Received: from f0-dek.dektech.com.au ([210.10.221.142]
 helo=mail.dektech.com.au)
 by sfi-mx-4.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1iJyCi-008cZC-9G
 for tipc-discussion@lists.sourceforge.net; Mon, 14 Oct 2019 11:07:57 +0000
Received: from localhost (localhost [127.0.0.1])
 by mail.dektech.com.au (Postfix) with ESMTP id 941FE48D2E;
 Mon, 14 Oct 2019 22:07:44 +1100 (AEDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=dektech.com.au;
 h=references:in-reply-to:x-mailer:message-id:date:date:subject
 :subject:from:from:received:received:received; s=mail_dkim; t=
 1571051264; bh=MRxpf2HOItepeOnoN2xeLIo0tbEnuoRyLvcW+JSnNag=; b=B
 4TASbXhyG2SQpceoXTuBHlHNkOYX5+am+5xBq1EG5AEr806y51E7c3JSL4seMv8m
 WxclP/wxPx1VYfmO/zNjrhP/pBj9ILcMkIZOIc6H5mFW9LSUt+gHqVsCHPnftg26
 pQ/jnEUqiUCOAZZt1eqt3Cas0yN9TLtnSW7zRnzJ1s=
X-Virus-Scanned: amavisd-new at dektech.com.au
Received: from mail.dektech.com.au ([127.0.0.1])
 by localhost (mail2.dektech.com.au [127.0.0.1]) (amavisd-new, port 10026)
 with ESMTP id URyE3hr3_zCD; Mon, 14 Oct 2019 22:07:44 +1100 (AEDT)
Received: from mail.dektech.com.au (localhost [127.0.0.1])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.dektech.com.au (Postfix) with ESMTPS id 7A59E48D30;
 Mon, 14 Oct 2019 22:07:44 +1100 (AEDT)
Received: from localhost.localdomain (unknown [14.161.14.188])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.dektech.com.au (Postfix) with ESMTPSA id AE8AD48D2E;
 Mon, 14 Oct 2019 22:07:43 +1100 (AEDT)
From: Tuong Lien <tuong.t.lien@dektech.com.au>
To: tipc-discussion@lists.sourceforge.net, jon.maloy@ericsson.com,
 maloy@donjonn.com, ying.xue@windriver.com
Date: Mon, 14 Oct 2019 18:07:22 +0700
Message-Id: <20191014110722.13248-6-tuong.t.lien@dektech.com.au>
X-Mailer: git-send-email 2.13.7
In-Reply-To: <20191014110722.13248-1-tuong.t.lien@dektech.com.au>
References: <20191014110722.13248-1-tuong.t.lien@dektech.com.au>
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: dektech.com.au]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [210.10.221.142 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.0 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1iJyCi-008cZC-9G
Subject: [tipc-discussion] [PATCH RFC 5/5] tipc: add support for AEAD key
 setting via netlink
X-BeenThere: tipc-discussion@lists.sourceforge.net
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <tipc-discussion.lists.sourceforge.net>
List-Unsubscribe: <https://lists.sourceforge.net/lists/options/tipc-discussion>, 
 <mailto:tipc-discussion-request@lists.sourceforge.net?subject=unsubscribe>
List-Archive: <http://sourceforge.net/mailarchive/forum.php?forum_name=tipc-discussion>
List-Post: <mailto:tipc-discussion@lists.sourceforge.net>
List-Help: <mailto:tipc-discussion-request@lists.sourceforge.net?subject=help>
List-Subscribe: <https://lists.sourceforge.net/lists/listinfo/tipc-discussion>, 
 <mailto:tipc-discussion-request@lists.sourceforge.net?subject=subscribe>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: tipc-discussion-bounces@lists.sourceforge.net

This commit adds two netlink commands to TIPC in order for user to be
able to set or remove AEAD keys:
- TIPC_NL_KEY_SET
- TIPC_NL_KEY_FLUSH

When the 'KEY_SET' is given along with the key data, the key will be
initiated and attached to TIPC crypto. On the other hand, the
'KEY_FLUSH' command will remove all existing keys if any.

Signed-off-by: Tuong Lien <tuong.t.lien@dektech.com.au>
---
 include/uapi/linux/tipc_netlink.h |   4 ++
 net/tipc/netlink.c                |  16 ++++-
 net/tipc/node.c                   | 133 ++++++++++++++++++++++++++++++++++++++
 net/tipc/node.h                   |   2 +
 4 files changed, 154 insertions(+), 1 deletion(-)

diff --git a/include/uapi/linux/tipc_netlink.h b/include/uapi/linux/tipc_netlink.h
index efb958fd167d..6c2194ab745b 100644
--- a/include/uapi/linux/tipc_netlink.h
+++ b/include/uapi/linux/tipc_netlink.h
@@ -63,6 +63,8 @@ enum {
 	TIPC_NL_PEER_REMOVE,
 	TIPC_NL_BEARER_ADD,
 	TIPC_NL_UDP_GET_REMOTEIP,
+	TIPC_NL_KEY_SET,
+	TIPC_NL_KEY_FLUSH,
 
 	__TIPC_NL_CMD_MAX,
 	TIPC_NL_CMD_MAX = __TIPC_NL_CMD_MAX - 1
@@ -160,6 +162,8 @@ enum {
 	TIPC_NLA_NODE_UNSPEC,
 	TIPC_NLA_NODE_ADDR,		/* u32 */
 	TIPC_NLA_NODE_UP,		/* flag */
+	TIPC_NLA_NODE_ID,		/* data */
+	TIPC_NLA_NODE_KEY,		/* data */
 
 	__TIPC_NLA_NODE_MAX,
 	TIPC_NLA_NODE_MAX = __TIPC_NLA_NODE_MAX - 1
diff --git a/net/tipc/netlink.c b/net/tipc/netlink.c
index d32bbd0f5e46..f118cc9d0885 100644
--- a/net/tipc/netlink.c
+++ b/net/tipc/netlink.c
@@ -102,7 +102,11 @@ const struct nla_policy tipc_nl_link_policy[TIPC_NLA_LINK_MAX + 1] = {
 const struct nla_policy tipc_nl_node_policy[TIPC_NLA_NODE_MAX + 1] = {
 	[TIPC_NLA_NODE_UNSPEC]		= { .type = NLA_UNSPEC },
 	[TIPC_NLA_NODE_ADDR]		= { .type = NLA_U32 },
-	[TIPC_NLA_NODE_UP]		= { .type = NLA_FLAG }
+	[TIPC_NLA_NODE_UP]		= { .type = NLA_FLAG },
+	[TIPC_NLA_NODE_ID]		= { .type = NLA_BINARY,
+					    .len = TIPC_NODEID_LEN},
+	[TIPC_NLA_NODE_KEY]		= { .type = NLA_BINARY,
+					    .len = TIPC_AEAD_KEY_SIZE_MAX},
 };
 
 /* Properties valid for media, bearer and link */
@@ -257,6 +261,16 @@ static const struct genl_ops tipc_genl_v2_ops[] = {
 		.dumpit	= tipc_udp_nl_dump_remoteip,
 	},
 #endif
+	{
+		.cmd	= TIPC_NL_KEY_SET,
+		.validate = GENL_DONT_VALIDATE_STRICT | GENL_DONT_VALIDATE_DUMP,
+		.doit	= tipc_nl_node_set_key,
+	},
+	{
+		.cmd	= TIPC_NL_KEY_FLUSH,
+		.validate = GENL_DONT_VALIDATE_STRICT | GENL_DONT_VALIDATE_DUMP,
+		.doit	= tipc_nl_node_flush_key,
+	},
 };
 
 struct genl_family tipc_genl_family __ro_after_init = {
diff --git a/net/tipc/node.c b/net/tipc/node.c
index e6e0c5bee4bc..6621091f22d1 100644
--- a/net/tipc/node.c
+++ b/net/tipc/node.c
@@ -2628,6 +2628,139 @@ int tipc_nl_node_dump_monitor_peer(struct sk_buff *skb,
 	return skb->len;
 }
 
+static int tipc_nl_retrieve_key(struct nlattr **attrs,
+				struct tipc_aead_key **key)
+{
+	struct nlattr *attr = attrs[TIPC_NLA_NODE_KEY];
+
+	if (!attr)
+		return -ENODATA;
+
+	*key = (struct tipc_aead_key *)nla_data(attr);
+	if (nla_len(attr) < tipc_aead_key_size(*key))
+		return -EINVAL;
+
+	return 0;
+}
+
+static int tipc_nl_retrieve_nodeid(struct nlattr **attrs, u8 **node_id)
+{
+	struct nlattr *attr = attrs[TIPC_NLA_NODE_ID];
+
+	if (!attr)
+		return -ENODATA;
+
+	if (nla_len(attr) < TIPC_NODEID_LEN)
+		return -EINVAL;
+
+	*node_id = (u8 *)nla_data(attr);
+	return 0;
+}
+
+int __tipc_nl_node_set_key(struct sk_buff *skb, struct genl_info *info)
+{
+	struct nlattr *attrs[TIPC_NLA_NODE_MAX + 1];
+	struct net *net = sock_net(skb->sk);
+	struct tipc_net *tn = tipc_net(net);
+	struct tipc_node *n = NULL;
+	struct tipc_aead_key *ukey;
+	struct tipc_crypto *c;
+	u8 *id, *own_id;
+	int rc = 0;
+
+	if (!info->attrs[TIPC_NLA_NODE])
+		return -EINVAL;
+
+	rc = nla_parse_nested(attrs, TIPC_NLA_NODE_MAX,
+			      info->attrs[TIPC_NLA_NODE],
+			      tipc_nl_node_policy, info->extack);
+	if (rc)
+		goto exit;
+
+	own_id = tipc_own_id(net);
+	if (!own_id) {
+		rc = -EPERM;
+		goto exit;
+	}
+
+	rc = tipc_nl_retrieve_key(attrs, &ukey);
+	if (rc)
+		goto exit;
+
+	rc = tipc_aead_key_validate(ukey);
+	if (rc)
+		goto exit;
+
+	rc = tipc_nl_retrieve_nodeid(attrs, &id);
+	switch (rc) {
+	case -ENODATA:
+		/* Cluster key mode */
+		rc = tipc_crypto_key_init(tn->crypto_tx, ukey, CLUSTER_KEY);
+		break;
+	case 0:
+		/* Per-node key mode */
+		if (!memcmp(id, own_id, NODE_ID_LEN)) {
+			c = tn->crypto_tx;
+		} else {
+			n = tipc_node_find_by_id(net, id) ?:
+				tipc_node_create(net, 0, id, 0xffffu, true);
+			if (unlikely(!n)) {
+				rc = -ENOMEM;
+				break;
+			}
+			c = n->crypto_rx;
+		}
+
+		rc = tipc_crypto_key_init(c, ukey, PER_NODE_KEY);
+		if (n)
+			tipc_node_put(n);
+		break;
+	default:
+		break;
+	}
+
+exit:
+	return (rc < 0) ? rc : 0;
+}
+
+int tipc_nl_node_set_key(struct sk_buff *skb, struct genl_info *info)
+{
+	int err;
+
+	rtnl_lock();
+	err = __tipc_nl_node_set_key(skb, info);
+	rtnl_unlock();
+
+	return err;
+}
+
+int __tipc_nl_node_flush_key(struct sk_buff *skb, struct genl_info *info)
+{
+	struct net *net = sock_net(skb->sk);
+	struct tipc_net *tn = tipc_net(net);
+	struct tipc_node *n;
+
+	tipc_crypto_key_flush(tn->crypto_tx);
+	rcu_read_lock();
+	list_for_each_entry_rcu(n, &tn->node_list, list)
+		tipc_crypto_key_flush(n->crypto_rx);
+	rcu_read_unlock();
+
+	pr_info("All keys are flushed!\n");
+	return 0;
+}
+
+int tipc_nl_node_flush_key(struct sk_buff *skb, struct genl_info *info)
+{
+	int err;
+
+	rtnl_lock();
+	err = __tipc_nl_node_flush_key(skb, info);
+	rtnl_unlock();
+
+	return err;
+}
+
 /**
  * tipc_node_dump - dump TIPC node data
  * @n: tipc node to be dumped
diff --git a/net/tipc/node.h b/net/tipc/node.h
index ec44ab454aa9..a0c59893fbd6 100644
--- a/net/tipc/node.h
+++ b/net/tipc/node.h
@@ -115,4 +115,6 @@ int tipc_nl_node_get_monitor(struct sk_buff *skb, struct genl_info *info);
 int tipc_nl_node_dump_monitor(struct sk_buff *skb, struct netlink_callback *cb);
 int tipc_nl_node_dump_monitor_peer(struct sk_buff *skb,
 				   struct netlink_callback *cb);
+int tipc_nl_node_set_key(struct sk_buff *skb, struct genl_info *info);
+int tipc_nl_node_flush_key(struct sk_buff *skb, struct genl_info *info);
 #endif
-- 
2.13.7



_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
