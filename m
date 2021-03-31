Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id D2FD63502D5
	for <lists+tipc-discussion@lfdr.de>; Wed, 31 Mar 2021 16:56:25 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.92.3)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1lRcGa-0006ZA-FY; Wed, 31 Mar 2021 14:56:20 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 (envelope-from <jmaloy@redhat.com>) id 1lRcGZ-0006Z2-5p
 for tipc-discussion@lists.sourceforge.net; Wed, 31 Mar 2021 14:56:19 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 MIME-Version:Date:Message-ID:From:References:To:Subject:Sender:Reply-To:Cc:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=aYyFy+AbJvNvHl4FO8iHwbOqDFzZonGAjAlFqxDB3tM=; b=Kgziglc0GJUKGClFfuYzmuRpgn
 6928C9vo9wSFuci08hQ1ZVd/jkeg4p2EVeVnlBdUxqWO3tVwdUZM7cD4ayqRtoMKi6x8Vo0x6YsNw
 dIBYjPidBuF4OenPBepfepjY/I23pQQep8g7QlpGe1RUfwYV2vL0rOoybKyUqtBb3350=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:Date:
 Message-ID:From:References:To:Subject:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=aYyFy+AbJvNvHl4FO8iHwbOqDFzZonGAjAlFqxDB3tM=; b=PlR0fGbnmPvtXgTtci0s6jaej7
 hyOS/U5KVX9TgH4E0PKVsoPiANtjYvsu8Z16kteaYK7t2t5QdmQNHHguIfoANXS5NfLGpWR0lecPQ
 lwBK5CSgCbrIeNc7IA+1MLHr7s2ugwnTnmA1iVLJGsbA/eRjFMela7UTErCcPv09QYBI=;
Received: from us-smtp-delivery-124.mimecast.com ([170.10.133.124])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1lRcGT-00HH45-Jf
 for tipc-discussion@lists.sourceforge.net; Wed, 31 Mar 2021 14:56:19 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1617202567;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=aYyFy+AbJvNvHl4FO8iHwbOqDFzZonGAjAlFqxDB3tM=;
 b=Y7+lmTIz4Mxhx9enARwd3RhoVzyoCplE3duM1BOx8esLobMoPOhBeicFGFHJesG/DNGhO9
 8EjjqLrbMkbroEaDnAL5dXsI5TV7AHweHuqn7gDNMC0Yv/iEeaVcZ1Rs5qbqK+NOIZCzaz
 oD2a70ef2+WT7AzG9Q8BI9AdRg/LPbQ=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-274-dCep4j1rNpa56VLpmgNZuA-1; Wed, 31 Mar 2021 10:56:03 -0400
X-MC-Unique: dCep4j1rNpa56VLpmgNZuA-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com
 [10.5.11.22])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id E7370108BD06;
 Wed, 31 Mar 2021 14:56:01 +0000 (UTC)
Received: from [10.10.114.63] (ovpn-114-63.rdu2.redhat.com [10.10.114.63])
 by smtp.corp.redhat.com (Postfix) with ESMTP id C598410013D7;
 Wed, 31 Mar 2021 14:56:00 +0000 (UTC)
To: Hoang Le <hoang.h.le@dektech.com.au>,
 tipc-discussion@lists.sourceforge.net, maloy@donjonn.com,
 ying.xue@windriver.com, tuan.a.vo@dektech.com.au,
 tung.q.nguyen@dektech.com.au
References: <20210329105903.62564-1-hoang.h.le@dektech.com.au>
From: Jon Maloy <jmaloy@redhat.com>
Message-ID: <8f7394f4-2c5e-6a9e-68a0-ec07777e2c5d@redhat.com>
Date: Wed, 31 Mar 2021 10:56:00 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.6.0
MIME-Version: 1.0
In-Reply-To: <20210329105903.62564-1-hoang.h.le@dektech.com.au>
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=jmaloy@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: dektech.com.au]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [170.10.133.124 listed in wl.mailspike.net]
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.0 NICE_REPLY_A           Looks like a legit reply (A)
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1lRcGT-00HH45-Jf
Subject: Re: [tipc-discussion] [iproute2-next] tipc: use the libmnl
 functions in lib/mnl_utils.c
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: tipc-discussion-bounces@lists.sourceforge.net



On 3/29/21 6:59 AM, Hoang Le wrote:
> To avoid duplication,
avoid code duplication
> tipc should be converted to use the helper
> functions for working with libmnl in lib/mnl_utils.c
>
> Signed-off-by: Hoang Le <hoang.h.le@dektech.com.au>
> ---
>   tipc/bearer.c    |  38 ++++++--------
>   tipc/cmdl.c      |   2 -
>   tipc/link.c      |  37 +++++--------
>   tipc/media.c     |  15 +++---
>   tipc/msg.c       | 132 +++--------------------------------------------
>   tipc/msg.h       |   2 +-
>   tipc/nametable.c |   5 +-
>   tipc/node.c      |  33 +++++-------
>   tipc/peer.c      |   8 ++-
>   tipc/socket.c    |  10 ++--
>   tipc/tipc.c      |  21 +++++++-
>   11 files changed, 83 insertions(+), 220 deletions(-)
>
> diff --git a/tipc/bearer.c b/tipc/bearer.c
> index 4470819e4a96..2afc48b9b108 100644
> --- a/tipc/bearer.c
> +++ b/tipc/bearer.c
> @@ -21,9 +21,6 @@
>   #include <linux/genetlink.h>
>   #include <linux/if.h>
>   
> -#include <libmnl/libmnl.h>
> -#include <sys/socket.h>
> -
>   #include "utils.h"
>   #include "cmdl.h"
>   #include "msg.h"
> @@ -101,11 +98,11 @@ static int get_netid_cb(const struct nlmsghdr *nlh, void *data)
>   
>   static int generate_multicast(short af, char *buf, int bufsize)
>   {
> -	int netid;
> -	char mnl_msg[MNL_SOCKET_BUFFER_SIZE];
>   	struct nlmsghdr *nlh;
> +	int netid;
>   
> -	if (!(nlh = msg_init(mnl_msg, TIPC_NL_NET_GET))) {
> +	nlh = msg_init(TIPC_NL_NET_GET);
> +	if (!nlh) {
>   		fprintf(stderr, "error, message initialization failed\n");
>   		return -1;
>   	}
> @@ -399,7 +396,6 @@ static int cmd_bearer_add_media(struct nlmsghdr *nlh, const struct cmd *cmd,
>   {
>   	int err;
>   	char *media;
> -	char buf[MNL_SOCKET_BUFFER_SIZE];
>   	struct opt *opt;
>   	struct nlattr *attrs;
>   	struct opt opts[] = {
> @@ -435,7 +431,8 @@ static int cmd_bearer_add_media(struct nlmsghdr *nlh, const struct cmd *cmd,
>   		return -EINVAL;
>   	}
>   
> -	if (!(nlh = msg_init(buf, TIPC_NL_BEARER_ADD))) {
> +	nlh = msg_init(TIPC_NL_BEARER_ADD);
> +	if (!nlh) {
>   		fprintf(stderr, "error, message initialisation failed\n");
>   		return -1;
>   	}
> @@ -482,7 +479,6 @@ static int cmd_bearer_enable(struct nlmsghdr *nlh, const struct cmd *cmd,
>   	int err;
>   	struct opt *opt;
>   	struct nlattr *nest;
> -	char buf[MNL_SOCKET_BUFFER_SIZE];
>   	struct opt opts[] = {
>   		{ "device",		OPT_KEYVAL,	NULL },
>   		{ "domain",		OPT_KEYVAL,	NULL },
> @@ -508,7 +504,8 @@ static int cmd_bearer_enable(struct nlmsghdr *nlh, const struct cmd *cmd,
>   		return -EINVAL;
>   	}
>   
> -	if (!(nlh = msg_init(buf, TIPC_NL_BEARER_ENABLE))) {
> +	nlh = msg_init(TIPC_NL_BEARER_ENABLE);
> +	if (!nlh) {
>   		fprintf(stderr, "error: message initialisation failed\n");
>   		return -1;
>   	}
> @@ -563,7 +560,6 @@ static int cmd_bearer_disable(struct nlmsghdr *nlh, const struct cmd *cmd,
>   			      struct cmdl *cmdl, void *data)
>   {
>   	int err;
> -	char buf[MNL_SOCKET_BUFFER_SIZE];
>   	struct nlattr *nest;
>   	struct opt opts[] = {
>   		{ "device",		OPT_KEYVAL,	NULL },
> @@ -584,7 +580,8 @@ static int cmd_bearer_disable(struct nlmsghdr *nlh, const struct cmd *cmd,
>   		return -EINVAL;
>   	}
>   
> -	if (!(nlh = msg_init(buf, TIPC_NL_BEARER_DISABLE))) {
> +	nlh = msg_init(TIPC_NL_BEARER_DISABLE);
> +	if (!nlh) {
>   		fprintf(stderr, "error, message initialisation failed\n");
>   		return -1;
>   	}
> @@ -628,7 +625,6 @@ static int cmd_bearer_set_prop(struct nlmsghdr *nlh, const struct cmd *cmd,
>   	int err;
>   	int val;
>   	int prop;
> -	char buf[MNL_SOCKET_BUFFER_SIZE];
>   	struct nlattr *props;
>   	struct nlattr *attrs;
>   	struct opt opts[] = {
> @@ -675,7 +671,8 @@ static int cmd_bearer_set_prop(struct nlmsghdr *nlh, const struct cmd *cmd,
>   		}
>   	}
>   
> -	if (!(nlh = msg_init(buf, TIPC_NL_BEARER_SET))) {
> +	nlh = msg_init(TIPC_NL_BEARER_SET);
> +	if (!nlh) {
>   		fprintf(stderr, "error, message initialisation failed\n");
>   		return -1;
>   	}
> @@ -876,7 +873,6 @@ static int cmd_bearer_get_media(struct nlmsghdr *nlh, const struct cmd *cmd,
>   {
>   	int err;
>   	char *media;
> -	char buf[MNL_SOCKET_BUFFER_SIZE];
>   	struct opt *opt;
>   	struct cb_data cb_data = {0};
>   	struct nlattr *attrs;
> @@ -918,7 +914,8 @@ static int cmd_bearer_get_media(struct nlmsghdr *nlh, const struct cmd *cmd,
>   		return -EINVAL;
>   	}
>   
> -	if (!(nlh = msg_init(buf, TIPC_NL_BEARER_GET))) {
> +	nlh = msg_init(TIPC_NL_BEARER_GET);
> +	if (!nlh) {
>   		fprintf(stderr, "error, message initialisation failed\n");
>   		return -1;
>   	}
> @@ -956,7 +953,6 @@ static int cmd_bearer_get_prop(struct nlmsghdr *nlh, const struct cmd *cmd,
>   {
>   	int err;
>   	int prop;
> -	char buf[MNL_SOCKET_BUFFER_SIZE];
>   	struct nlattr *attrs;
>   	struct opt opts[] = {
>   		{ "device",		OPT_KEYVAL,	NULL },
> @@ -1001,7 +997,8 @@ static int cmd_bearer_get_prop(struct nlmsghdr *nlh, const struct cmd *cmd,
>   		}
>   	}
>   
> -	if (!(nlh = msg_init(buf, TIPC_NL_BEARER_GET))) {
> +	nlh = msg_init(TIPC_NL_BEARER_GET);
> +	if (!nlh) {
>   		fprintf(stderr, "error, message initialisation failed\n");
>   		return -1;
>   	}
> @@ -1056,14 +1053,13 @@ static int bearer_list_cb(const struct nlmsghdr *nlh, void *data)
>   static int cmd_bearer_list(struct nlmsghdr *nlh, const struct cmd *cmd,
>   			   struct cmdl *cmdl, void *data)
>   {
> -	char buf[MNL_SOCKET_BUFFER_SIZE];
> -
>   	if (help_flag) {
>   		fprintf(stderr, "Usage: %s bearer list\n", cmdl->argv[0]);
>   		return -EINVAL;
>   	}
>   
> -	if (!(nlh = msg_init(buf, TIPC_NL_BEARER_GET))) {
> +	nlh = msg_init(TIPC_NL_BEARER_GET);
> +	if (!nlh) {
>   		fprintf(stderr, "error, message initialisation failed\n");
>   		return -1;
>   	}
> diff --git a/tipc/cmdl.c b/tipc/cmdl.c
> index 981e268ebf94..feaac2da175f 100644
> --- a/tipc/cmdl.c
> +++ b/tipc/cmdl.c
> @@ -13,8 +13,6 @@
>   #include <string.h>
>   #include <errno.h>
>   
> -#include <libmnl/libmnl.h>
> -
>   #include "cmdl.h"
>   
>   static const struct cmd *find_cmd(const struct cmd *cmds, char *str)
> diff --git a/tipc/link.c b/tipc/link.c
> index 192736eaa154..2123f109c694 100644
> --- a/tipc/link.c
> +++ b/tipc/link.c
> @@ -17,7 +17,6 @@
>   #include <linux/tipc_netlink.h>
>   #include <linux/tipc.h>
>   #include <linux/genetlink.h>
> -#include <libmnl/libmnl.h>
>   
>   #include "cmdl.h"
>   #include "msg.h"
> @@ -60,7 +59,6 @@ static int link_list_cb(const struct nlmsghdr *nlh, void *data)
>   static int cmd_link_list(struct nlmsghdr *nlh, const struct cmd *cmd,
>   			 struct cmdl *cmdl, void *data)
>   {
> -	char buf[MNL_SOCKET_BUFFER_SIZE];
>   	int err = 0;
>   
>   	if (help_flag) {
> @@ -68,7 +66,7 @@ static int cmd_link_list(struct nlmsghdr *nlh, const struct cmd *cmd,
>   		return -EINVAL;
>   	}
>   
> -	nlh = msg_init(buf, TIPC_NL_LINK_GET);
> +	nlh = msg_init(TIPC_NL_LINK_GET);
>   	if (!nlh) {
>   		fprintf(stderr, "error, message initialisation failed\n");
>   		return -1;
> @@ -126,7 +124,6 @@ static int cmd_link_get_prop(struct nlmsghdr *nlh, const struct cmd *cmd,
>   			     struct cmdl *cmdl, void *data)
>   {
>   	int prop;
> -	char buf[MNL_SOCKET_BUFFER_SIZE];
>   	struct nlattr *attrs;
>   	struct opt *opt;
>   	struct opt opts[] = {
> @@ -151,7 +148,7 @@ static int cmd_link_get_prop(struct nlmsghdr *nlh, const struct cmd *cmd,
>   	if (parse_opts(opts, cmdl) < 0)
>   		return -EINVAL;
>   
> -	nlh = msg_init(buf, TIPC_NL_LINK_GET);
> +	nlh = msg_init(TIPC_NL_LINK_GET);
>   	if (!nlh) {
>   		fprintf(stderr, "error, message initialisation failed\n");
>   		return -1;
> @@ -241,7 +238,6 @@ static int cmd_link_get_bcast(struct nlmsghdr *nlh, const struct cmd *cmd,
>   			     struct cmdl *cmdl, void *data)
>   {
>   	int prop = TIPC_NLA_PROP_BROADCAST;
> -	char buf[MNL_SOCKET_BUFFER_SIZE];
>   	struct nlattr *attrs;
>   
>   	if (help_flag) {
> @@ -249,7 +245,7 @@ static int cmd_link_get_bcast(struct nlmsghdr *nlh, const struct cmd *cmd,
>   		return -EINVAL;
>   	}
>   
> -	nlh = msg_init(buf, TIPC_NL_LINK_GET);
> +	nlh = msg_init(TIPC_NL_LINK_GET);
>   	if (!nlh) {
>   		fprintf(stderr, "error, message initialisation failed\n");
>   		return -1;
> @@ -284,7 +280,6 @@ static int cmd_link_stat_reset(struct nlmsghdr *nlh, const struct cmd *cmd,
>   			       struct cmdl *cmdl, void *data)
>   {
>   	char *link;
> -	char buf[MNL_SOCKET_BUFFER_SIZE];
>   	struct opt *opt;
>   	struct nlattr *nest;
>   	struct opt opts[] = {
> @@ -302,7 +297,7 @@ static int cmd_link_stat_reset(struct nlmsghdr *nlh, const struct cmd *cmd,
>   		return -EINVAL;
>   	}
>   
> -	nlh = msg_init(buf, TIPC_NL_LINK_RESET_STATS);
> +	nlh = msg_init(TIPC_NL_LINK_RESET_STATS);
>   	if (!nlh) {
>   		fprintf(stderr, "error, message initialisation failed\n");
>   		return -1;
> @@ -550,7 +545,6 @@ static int cmd_link_stat_show(struct nlmsghdr *nlh, const struct cmd *cmd,
>   			      struct cmdl *cmdl, void *data)
>   {
>   	char *link = NULL;
> -	char buf[MNL_SOCKET_BUFFER_SIZE];
>   	struct opt *opt;
>   	struct opt opts[] = {
>   		{ "link",		OPT_KEYVAL,	NULL },
> @@ -564,7 +558,7 @@ static int cmd_link_stat_show(struct nlmsghdr *nlh, const struct cmd *cmd,
>   		return -EINVAL;
>   	}
>   
> -	nlh = msg_init(buf, TIPC_NL_LINK_GET);
> +	nlh = msg_init(TIPC_NL_LINK_GET);
>   	if (!nlh) {
>   		fprintf(stderr, "error, message initialisation failed\n");
>   		return -1;
> @@ -626,7 +620,6 @@ static int cmd_link_set_prop(struct nlmsghdr *nlh, const struct cmd *cmd,
>   {
>   	int val;
>   	int prop;
> -	char buf[MNL_SOCKET_BUFFER_SIZE];
>   	struct nlattr *props;
>   	struct nlattr *attrs;
>   	struct opt *opt;
> @@ -658,7 +651,7 @@ static int cmd_link_set_prop(struct nlmsghdr *nlh, const struct cmd *cmd,
>   	if (parse_opts(opts, cmdl) < 0)
>   		return -EINVAL;
>   
> -	nlh = msg_init(buf, TIPC_NL_LINK_SET);
> +	nlh = msg_init(TIPC_NL_LINK_SET);
>   	if (!nlh) {
>   		fprintf(stderr, "error, message initialisation failed\n");
>   		return -1;
> @@ -704,7 +697,6 @@ static void cmd_link_set_bcast_help(struct cmdl *cmdl)
>   static int cmd_link_set_bcast(struct nlmsghdr *nlh, const struct cmd *cmd,
>   			     struct cmdl *cmdl, void *data)
>   {
> -	char buf[MNL_SOCKET_BUFFER_SIZE];
>   	struct nlattr *props;
>   	struct nlattr *attrs;
>   	struct opt *opt;
> @@ -734,7 +726,7 @@ static int cmd_link_set_bcast(struct nlmsghdr *nlh, const struct cmd *cmd,
>   		return -EINVAL;
>   	}
>   
> -	nlh = msg_init(buf, TIPC_NL_LINK_SET);
> +	nlh = msg_init(TIPC_NL_LINK_SET);
>   	if (!nlh) {
>   		fprintf(stderr, "error, message initialisation failed\n");
>   		return -1;
> @@ -788,7 +780,6 @@ static int cmd_link_mon_set_prop(struct nlmsghdr *nlh, const struct cmd *cmd,
>   				 struct cmdl *cmdl, void *data)
>   {
>   	int size;
> -	char buf[MNL_SOCKET_BUFFER_SIZE];
>   	struct nlattr *attrs;
>   
>   	if (cmdl->argc != cmdl->optind + 1) {
> @@ -797,7 +788,7 @@ static int cmd_link_mon_set_prop(struct nlmsghdr *nlh, const struct cmd *cmd,
>   	}
>   	size = atoi(shift_cmdl(cmdl));
>   
> -	nlh = msg_init(buf, TIPC_NL_MON_SET);
> +	nlh = msg_init(TIPC_NL_MON_SET);
>   	if (!nlh) {
>   		fprintf(stderr, "error, message initialisation failed\n");
>   		return -1;
> @@ -841,7 +832,6 @@ static int link_mon_summary_cb(const struct nlmsghdr *nlh, void *data)
>   static int cmd_link_mon_summary(struct nlmsghdr *nlh, const struct cmd *cmd,
>   				struct cmdl *cmdl, void *data)
>   {
> -	char buf[MNL_SOCKET_BUFFER_SIZE];
>   	int err = 0;
>   
>   	if (help_flag) {
> @@ -849,7 +839,7 @@ static int cmd_link_mon_summary(struct nlmsghdr *nlh, const struct cmd *cmd,
>   		return -EINVAL;
>   	}
>   
> -	nlh = msg_init(buf, TIPC_NL_MON_GET);
> +	nlh = msg_init(TIPC_NL_MON_GET);
>   	if (!nlh) {
>   		fprintf(stderr, "error, message initialisation failed\n");
>   		return -1;
> @@ -1004,11 +994,10 @@ exit:
>   static int link_mon_peer_list(uint32_t mon_ref)
>   {
>   	struct nlmsghdr *nlh;
> -	char buf[MNL_SOCKET_BUFFER_SIZE];
>   	struct nlattr *nest;
>   	int err = 0;
>   
> -	nlh = msg_init(buf, TIPC_NL_MON_PEER_GET);
> +	nlh = msg_init(TIPC_NL_MON_PEER_GET);
>   	if (!nlh) {
>   		fprintf(stderr, "error, message initialisation failed\n");
>   		return -1;
> @@ -1080,7 +1069,6 @@ static void cmd_link_mon_list_udp_help(struct cmdl *cmdl, char *media)
>   static int cmd_link_mon_list(struct nlmsghdr *nlh, const struct cmd *cmd,
>   			     struct cmdl *cmdl, void *data)
>   {
> -	char buf[MNL_SOCKET_BUFFER_SIZE];
>   	char bname[TIPC_MAX_BEARER_NAME] = {0};
>   	struct opt opts[] = {
>   		{ "media",	OPT_KEYVAL,	NULL },
> @@ -1112,7 +1100,7 @@ static int cmd_link_mon_list(struct nlmsghdr *nlh, const struct cmd *cmd,
>   		return -EINVAL;
>   	}
>   
> -	nlh = msg_init(buf, TIPC_NL_MON_GET);
> +	nlh = msg_init(TIPC_NL_MON_GET);
>   	if (!nlh) {
>   		fprintf(stderr, "error, message initialisation failed\n");
>   		return -1;
> @@ -1176,9 +1164,8 @@ static int link_mon_get_cb(const struct nlmsghdr *nlh, void *data)
>   static int cmd_link_mon_get_prop(struct nlmsghdr *nlh, const struct cmd *cmd,
>   				 struct cmdl *cmdl, void *data)
>   {
> -	char buf[MNL_SOCKET_BUFFER_SIZE];
>   
> -	nlh = msg_init(buf, TIPC_NL_MON_GET);
> +	nlh = msg_init(TIPC_NL_MON_GET);
>   	if (!nlh) {
>   		fprintf(stderr, "error, message initialisation failed\n");
>   		return -1;
> diff --git a/tipc/media.c b/tipc/media.c
> index 969ef6578b3b..a3fec681cbf4 100644
> --- a/tipc/media.c
> +++ b/tipc/media.c
> @@ -15,9 +15,7 @@
>   #include <errno.h>
>   
>   #include <linux/tipc_netlink.h>
> -#include <linux/tipc.h>
>   #include <linux/genetlink.h>
> -#include <libmnl/libmnl.h>
>   
>   #include "cmdl.h"
>   #include "msg.h"
> @@ -45,14 +43,13 @@ static int media_list_cb(const struct nlmsghdr *nlh, void *data)
>   static int cmd_media_list(struct nlmsghdr *nlh, const struct cmd *cmd,
>   			 struct cmdl *cmdl, void *data)
>   {
> -	char buf[MNL_SOCKET_BUFFER_SIZE];
> -
>   	if (help_flag) {
>   		fprintf(stderr, "Usage: %s media list\n", cmdl->argv[0]);
>   		return -EINVAL;
>   	}
>   
> -	if (!(nlh = msg_init(buf, TIPC_NL_MEDIA_GET))) {
> +	nlh = msg_init(TIPC_NL_MEDIA_GET);
> +	if (!nlh) {
>   		fprintf(stderr, "error, message initialisation failed\n");
>   		return -1;
>   	}
> @@ -89,7 +86,6 @@ static int cmd_media_get_prop(struct nlmsghdr *nlh, const struct cmd *cmd,
>   			      struct cmdl *cmdl, void *data)
>   {
>   	int prop;
> -	char buf[MNL_SOCKET_BUFFER_SIZE];
>   	struct nlattr *nest;
>   	struct opt *opt;
>   	struct opt opts[] = {
> @@ -116,7 +112,8 @@ static int cmd_media_get_prop(struct nlmsghdr *nlh, const struct cmd *cmd,
>   	if (parse_opts(opts, cmdl) < 0)
>   		return -EINVAL;
>   
> -	if (!(nlh = msg_init(buf, TIPC_NL_MEDIA_GET))) {
> +	nlh = msg_init(TIPC_NL_MEDIA_GET);
> +	if (!nlh) {
>   		fprintf(stderr, "error, message initialisation failed\n");
>   		return -1;
>   	}
> @@ -179,7 +176,6 @@ static int cmd_media_set_prop(struct nlmsghdr *nlh, const struct cmd *cmd,
>   {
>   	int val;
>   	int prop;
> -	char buf[MNL_SOCKET_BUFFER_SIZE];
>   	struct nlattr *props;
>   	struct nlattr *attrs;
>   	struct opt *opt;
> @@ -213,7 +209,8 @@ static int cmd_media_set_prop(struct nlmsghdr *nlh, const struct cmd *cmd,
>   	if (parse_opts(opts, cmdl) < 0)
>   		return -EINVAL;
>   
> -	if (!(nlh = msg_init(buf, TIPC_NL_MEDIA_SET))) {
> +	nlh = msg_init(TIPC_NL_MEDIA_SET);
> +	if (!nlh) {
>   		fprintf(stderr, "error, message initialisation failed\n");
>   		return -1;
>   	}
> diff --git a/tipc/msg.c b/tipc/msg.c
> index dc09d05048f3..1225691c9a81 100644
> --- a/tipc/msg.c
> +++ b/tipc/msg.c
> @@ -13,13 +13,13 @@
>   #include <time.h>
>   #include <errno.h>
>   
> -#include <linux/tipc_netlink.h>
> -#include <linux/tipc.h>
> -#include <linux/genetlink.h>
>   #include <libmnl/libmnl.h>
>   
> +#include "mnl_utils.h"
>   #include "msg.h"
>   
> +extern struct mnlu_gen_socket tipc_nlg;
> +
>   int parse_attrs(const struct nlattr *attr, void *data)
>   {
>   	const struct nlattr **tb = data;
> @@ -30,141 +30,23 @@ int parse_attrs(const struct nlattr *attr, void *data)
>   	return MNL_CB_OK;
>   }
>   
> -static int family_id_cb(const struct nlmsghdr *nlh, void *data)
> -{
> -	struct nlattr *tb[CTRL_ATTR_MAX + 1] = {};
> -	struct genlmsghdr *genl = mnl_nlmsg_get_payload(nlh);
> -	int *id = data;
> -
> -	mnl_attr_parse(nlh, sizeof(*genl), parse_attrs, tb);
> -	if (!tb[CTRL_ATTR_FAMILY_ID])
> -		return MNL_CB_ERROR;
> -
> -	*id = mnl_attr_get_u16(tb[CTRL_ATTR_FAMILY_ID]);
> -
> -	return MNL_CB_OK;
> -}
> -
> -static struct mnl_socket *msg_send(struct nlmsghdr *nlh)
> -{
> -	int ret;
> -	struct mnl_socket *nl;
> -
> -	nl = mnl_socket_open(NETLINK_GENERIC);
> -	if (nl == NULL) {
> -		perror("mnl_socket_open");
> -		return NULL;
> -	}
> -
> -	ret = mnl_socket_bind(nl, 0, MNL_SOCKET_AUTOPID);
> -	if (ret < 0) {
> -		perror("mnl_socket_bind");
> -		return NULL;
> -	}
> -
> -	ret = mnl_socket_sendto(nl, nlh, nlh->nlmsg_len);
> -	if (ret < 0) {
> -		perror("mnl_socket_send");
> -		return NULL;
> -	}
> -
> -	return nl;
> -}
> -
> -static int msg_recv(struct mnl_socket *nl, mnl_cb_t callback, void *data, int seq)
> -{
> -	int ret;
> -	unsigned int portid;
> -	char buf[MNL_SOCKET_BUFFER_SIZE];
> -
> -	portid = mnl_socket_get_portid(nl);
> -
> -	ret = mnl_socket_recvfrom(nl, buf, sizeof(buf));
> -	while (ret > 0) {
> -		ret = mnl_cb_run(buf, ret, seq, portid, callback, data);
> -		if (ret <= 0)
> -			break;
> -		ret = mnl_socket_recvfrom(nl, buf, sizeof(buf));
> -	}
> -	if (ret == -1)
> -		perror("error");
> -
> -	mnl_socket_close(nl);
> -
> -	return ret;
> -}
> -
> -static int msg_query(struct nlmsghdr *nlh, mnl_cb_t callback, void *data)
> -{
> -	unsigned int seq;
> -	struct mnl_socket *nl;
> -
> -	seq = time(NULL);
> -	nlh->nlmsg_seq = seq;
> -
> -	nl = msg_send(nlh);
> -	if (!nl)
> -		return -ENOTSUP;
> -
> -	return msg_recv(nl, callback, data, seq);
> -}
> -
> -static int get_family(void)
> -{
> -	int err;
> -	int nl_family;
> -	struct nlmsghdr *nlh;
> -	struct genlmsghdr *genl;
> -	char buf[MNL_SOCKET_BUFFER_SIZE];
> -
> -	nlh = mnl_nlmsg_put_header(buf);
> -	nlh->nlmsg_type	= GENL_ID_CTRL;
> -	nlh->nlmsg_flags = NLM_F_REQUEST | NLM_F_ACK;
> -
> -	genl = mnl_nlmsg_put_extra_header(nlh, sizeof(struct genlmsghdr));
> -	genl->cmd = CTRL_CMD_GETFAMILY;
> -	genl->version = 1;
> -
> -	mnl_attr_put_u16(nlh, CTRL_ATTR_FAMILY_ID, GENL_ID_CTRL);
> -	mnl_attr_put_strz(nlh, CTRL_ATTR_FAMILY_NAME, TIPC_GENL_V2_NAME);
> -
> -	if ((err = msg_query(nlh, family_id_cb, &nl_family)))
> -		return err;
> -
> -	return nl_family;
> -}
> -
>   int msg_doit(struct nlmsghdr *nlh, mnl_cb_t callback, void *data)
>   {
>   	nlh->nlmsg_flags = NLM_F_REQUEST | NLM_F_ACK;
> -	return msg_query(nlh, callback, data);
> +	return mnlu_gen_socket_sndrcv(&tipc_nlg, nlh, callback, data);
>   }
>   
>   int msg_dumpit(struct nlmsghdr *nlh, mnl_cb_t callback, void *data)
>   {
>   	nlh->nlmsg_flags = NLM_F_REQUEST | NLM_F_DUMP;
> -	return msg_query(nlh, callback, data);
> +	return mnlu_gen_socket_sndrcv(&tipc_nlg, nlh, callback, data);
>   }
>   
> -struct nlmsghdr *msg_init(char *buf, int cmd)
> +struct nlmsghdr *msg_init(int cmd)
>   {
> -	int family;
>   	struct nlmsghdr *nlh;
> -	struct genlmsghdr *genl;
> -
> -	family = get_family();
> -	if (family <= 0) {
> -		fprintf(stderr,
> -			"Unable to get TIPC nl family id (module loaded?)\n");
> -		return NULL;
> -	}
> -
> -	nlh = mnl_nlmsg_put_header(buf);
> -	nlh->nlmsg_type	= family;
>   
> -	genl = mnl_nlmsg_put_extra_header(nlh, sizeof(struct genlmsghdr));
> -	genl->cmd = cmd;
> -	genl->version = 1;
> +	nlh = mnlu_gen_socket_cmd_prepare(&tipc_nlg, cmd, 0);
>   
>   	return nlh;
>   }
> diff --git a/tipc/msg.h b/tipc/msg.h
> index 41fd1ad1403a..56af5a705fb9 100644
> --- a/tipc/msg.h
> +++ b/tipc/msg.h
> @@ -12,7 +12,7 @@
>   #ifndef _TIPC_MSG_H
>   #define _TIPC_MSG_H
>   
> -struct nlmsghdr *msg_init(char *buf, int cmd);
> +struct nlmsghdr *msg_init(int cmd);
>   int msg_doit(struct nlmsghdr *nlh, mnl_cb_t callback, void *data);
>   int msg_dumpit(struct nlmsghdr *nlh, mnl_cb_t callback, void *data);
>   int parse_attrs(const struct nlattr *attr, void *data);
> diff --git a/tipc/nametable.c b/tipc/nametable.c
> index d899eeb67c07..b09ed5fc7280 100644
> --- a/tipc/nametable.c
> +++ b/tipc/nametable.c
> @@ -15,7 +15,6 @@
>   #include <linux/tipc_netlink.h>
>   #include <linux/tipc.h>
>   #include <linux/genetlink.h>
> -#include <libmnl/libmnl.h>
>   
>   #include "cmdl.h"
>   #include "msg.h"
> @@ -82,7 +81,6 @@ static int cmd_nametable_show(struct nlmsghdr *nlh, const struct cmd *cmd,
>   			      struct cmdl *cmdl, void *data)
>   {
>   	int iteration = 0;
> -	char buf[MNL_SOCKET_BUFFER_SIZE];
>   	int rc = 0;
>   
>   	if (help_flag) {
> @@ -90,7 +88,8 @@ static int cmd_nametable_show(struct nlmsghdr *nlh, const struct cmd *cmd,
>   		return -EINVAL;
>   	}
>   
> -	if (!(nlh = msg_init(buf, TIPC_NL_NAME_TABLE_GET))) {
> +	nlh = msg_init(TIPC_NL_NAME_TABLE_GET);
> +	if (!nlh) {
>   		fprintf(stderr, "error, message initialisation failed\n");
>   		return -1;
>   	}
> diff --git a/tipc/node.c b/tipc/node.c
> index 05246013487f..ae75bfff7d2f 100644
> --- a/tipc/node.c
> +++ b/tipc/node.c
> @@ -17,7 +17,6 @@
>   #include <linux/tipc_netlink.h>
>   #include <linux/tipc.h>
>   #include <linux/genetlink.h>
> -#include <libmnl/libmnl.h>
>   
>   #include "cmdl.h"
>   #include "msg.h"
> @@ -52,14 +51,13 @@ static int node_list_cb(const struct nlmsghdr *nlh, void *data)
>   static int cmd_node_list(struct nlmsghdr *nlh, const struct cmd *cmd,
>   			 struct cmdl *cmdl, void *data)
>   {
> -	char buf[MNL_SOCKET_BUFFER_SIZE];
> -
>   	if (help_flag) {
>   		fprintf(stderr, "Usage: %s node list\n", cmdl->argv[0]);
>   		return -EINVAL;
>   	}
>   
> -	if (!(nlh = msg_init(buf, TIPC_NL_NODE_GET))) {
> +	nlh = msg_init(TIPC_NL_NODE_GET);
> +	if (!nlh) {
>   		fprintf(stderr, "error, message initialisation failed\n");
>   		return -1;
>   	}
> @@ -73,7 +71,6 @@ static int cmd_node_set_addr(struct nlmsghdr *nlh, const struct cmd *cmd,
>   	char *str;
>   	uint32_t addr;
>   	struct nlattr *nest;
> -	char buf[MNL_SOCKET_BUFFER_SIZE];
>   
>   	if (cmdl->argc != cmdl->optind + 1) {
>   		fprintf(stderr, "Usage: %s node set address ADDRESS\n",
> @@ -86,7 +83,8 @@ static int cmd_node_set_addr(struct nlmsghdr *nlh, const struct cmd *cmd,
>   	if (!addr)
>   		return -1;
>   
> -	if (!(nlh = msg_init(buf, TIPC_NL_NET_SET))) {
> +	nlh = msg_init(TIPC_NL_NET_SET);
> +	if (!nlh) {
>   		fprintf(stderr, "error, message initialisation failed\n");
>   		return -1;
>   	}
> @@ -126,7 +124,6 @@ static int cmd_node_get_addr(struct nlmsghdr *nlh, const struct cmd *cmd,
>   static int cmd_node_set_nodeid(struct nlmsghdr *nlh, const struct cmd *cmd,
>   			       struct cmdl *cmdl, void *data)
>   {
> -	char buf[MNL_SOCKET_BUFFER_SIZE];
>   	uint8_t id[16] = {0,};
>   	uint64_t *w0 = (uint64_t *) &id[0];
>   	uint64_t *w1 = (uint64_t *) &id[8];
> @@ -145,7 +142,7 @@ static int cmd_node_set_nodeid(struct nlmsghdr *nlh, const struct cmd *cmd,
>   		return -EINVAL;
>   	}
>   
> -	nlh = msg_init(buf, TIPC_NL_NET_SET);
> +	nlh = msg_init(TIPC_NL_NET_SET);
>   	if (!nlh) {
>   		fprintf(stderr, "error, message initialisation failed\n");
>   		return -1;
> @@ -201,7 +198,6 @@ static int cmd_node_set_key(struct nlmsghdr *nlh, const struct cmd *cmd,
>   	};
>   	struct nlattr *nest;
>   	struct opt *opt_algname, *opt_nodeid, *opt_master, *opt_rekeying;
> -	char buf[MNL_SOCKET_BUFFER_SIZE];
>   	uint8_t id[TIPC_NODEID_LEN] = {0,};
>   	uint32_t rekeying = 0;
>   	bool has_key = false;
> @@ -262,7 +258,7 @@ get_ops:
>   	}
>   
>   	/* Init & do the command */
> -	nlh = msg_init(buf, TIPC_NL_KEY_SET);
> +	nlh = msg_init(TIPC_NL_KEY_SET);
>   	if (!nlh) {
>   		fprintf(stderr, "error, message initialisation failed\n");
>   		return -1;
> @@ -287,15 +283,13 @@ get_ops:
>   static int cmd_node_flush_key(struct nlmsghdr *nlh, const struct cmd *cmd,
>   			      struct cmdl *cmdl, void *data)
>   {
> -	char buf[MNL_SOCKET_BUFFER_SIZE];
> -
>   	if (help_flag) {
>   		(cmd->help)(cmdl);
>   		return -EINVAL;
>   	}
>   
>   	/* Init & do the command */
> -	nlh = msg_init(buf, TIPC_NL_KEY_FLUSH);
> +	nlh = msg_init(TIPC_NL_KEY_FLUSH);
>   	if (!nlh) {
>   		fprintf(stderr, "error, message initialisation failed\n");
>   		return -1;
> @@ -332,14 +326,12 @@ static int nodeid_get_cb(const struct nlmsghdr *nlh, void *data)
>   static int cmd_node_get_nodeid(struct nlmsghdr *nlh, const struct cmd *cmd,
>   			       struct cmdl *cmdl, void *data)
>   {
> -	char buf[MNL_SOCKET_BUFFER_SIZE];
> -
>   	if (help_flag) {
>   		(cmd->help)(cmdl);
>   		return -EINVAL;
>   	}
>   
> -	nlh = msg_init(buf, TIPC_NL_NET_GET);
> +	nlh = msg_init(TIPC_NL_NET_GET);
>   	if (!nlh) {
>   		fprintf(stderr, "error, message initialisation failed\n");
>   		return -1;
> @@ -370,14 +362,13 @@ static int netid_get_cb(const struct nlmsghdr *nlh, void *data)
>   static int cmd_node_get_netid(struct nlmsghdr *nlh, const struct cmd *cmd,
>   			      struct cmdl *cmdl, void *data)
>   {
> -	char buf[MNL_SOCKET_BUFFER_SIZE];
> -
>   	if (help_flag) {
>   		(cmd->help)(cmdl);
>   		return -EINVAL;
>   	}
>   
> -	if (!(nlh = msg_init(buf, TIPC_NL_NET_GET))) {
> +	nlh = msg_init(TIPC_NL_NET_GET);
> +	if (!nlh) {
>   		fprintf(stderr, "error, message initialisation failed\n");
>   		return -1;
>   	}
> @@ -389,7 +380,6 @@ static int cmd_node_set_netid(struct nlmsghdr *nlh, const struct cmd *cmd,
>   			      struct cmdl *cmdl, void *data)
>   {
>   	int netid;
> -	char buf[MNL_SOCKET_BUFFER_SIZE];
>   	struct nlattr *nest;
>   
>   	if (help_flag) {
> @@ -397,7 +387,8 @@ static int cmd_node_set_netid(struct nlmsghdr *nlh, const struct cmd *cmd,
>   		return -EINVAL;
>   	}
>   
> -	if (!(nlh = msg_init(buf, TIPC_NL_NET_SET))) {
> +	nlh = msg_init(TIPC_NL_NET_SET);
> +	if (!nlh) {
>   		fprintf(stderr, "error, message initialisation failed\n");
>   		return -1;
>   	}
> diff --git a/tipc/peer.c b/tipc/peer.c
> index f14ec35e6f71..ed18efc552fa 100644
> --- a/tipc/peer.c
> +++ b/tipc/peer.c
> @@ -17,7 +17,6 @@
>   #include <linux/tipc_netlink.h>
>   #include <linux/tipc.h>
>   #include <linux/genetlink.h>
> -#include <libmnl/libmnl.h>
>   
>   #include "cmdl.h"
>   #include "msg.h"
> @@ -30,7 +29,6 @@ static int cmd_peer_rm_addr(struct nlmsghdr *nlh, const struct cmd *cmd,
>   	char *str;
>   	uint32_t addr;
>   	struct nlattr *nest;
> -	char buf[MNL_SOCKET_BUFFER_SIZE];
>   
>   	if ((cmdl->argc != cmdl->optind + 1) || help_flag) {
>   		fprintf(stderr, "Usage: %s peer remove address ADDRESS\n",
> @@ -47,7 +45,8 @@ static int cmd_peer_rm_addr(struct nlmsghdr *nlh, const struct cmd *cmd,
>   	if (!addr)
>   		return -1;
>   
> -	if (!(nlh = msg_init(buf, TIPC_NL_PEER_REMOVE))) {
> +	nlh = msg_init(TIPC_NL_PEER_REMOVE);
> +	if (!nlh) {
>   		fprintf(stderr, "error, message initialisation failed\n");
>   		return -1;
>   	}
> @@ -62,7 +61,6 @@ static int cmd_peer_rm_addr(struct nlmsghdr *nlh, const struct cmd *cmd,
>   static int cmd_peer_rm_nodeid(struct nlmsghdr *nlh, const struct cmd *cmd,
>   			      struct cmdl *cmdl, void *data)
>   {
> -	char buf[MNL_SOCKET_BUFFER_SIZE];
>   	__u8 id[16] = {0,};
>   	__u64 *w0 = (__u64 *)&id[0];
>   	__u64 *w1 = (__u64 *)&id[8];
> @@ -81,7 +79,7 @@ static int cmd_peer_rm_nodeid(struct nlmsghdr *nlh, const struct cmd *cmd,
>   		return -EINVAL;
>   	}
>   
> -	nlh = msg_init(buf, TIPC_NL_PEER_REMOVE);
> +	nlh = msg_init(TIPC_NL_PEER_REMOVE);
>   	if (!nlh) {
>   		fprintf(stderr, "error, message initialisation failed\n");
>   		return -1;
> diff --git a/tipc/socket.c b/tipc/socket.c
> index 852984ecd1e7..deae12af4409 100644
> --- a/tipc/socket.c
> +++ b/tipc/socket.c
> @@ -15,7 +15,6 @@
>   #include <linux/tipc.h>
>   #include <linux/tipc_netlink.h>
>   #include <linux/genetlink.h>
> -#include <libmnl/libmnl.h>
>   
>   #include "cmdl.h"
>   #include "msg.h"
> @@ -46,10 +45,10 @@ static int publ_list_cb(const struct nlmsghdr *nlh, void *data)
>   static int publ_list(uint32_t sock)
>   {
>   	struct nlmsghdr *nlh;
> -	char buf[MNL_SOCKET_BUFFER_SIZE];
>   	struct nlattr *nest;
>   
> -	if (!(nlh = msg_init(buf, TIPC_NL_PUBL_GET))) {
> +	nlh = msg_init(TIPC_NL_PUBL_GET);
> +	if (!nlh) {
>   		fprintf(stderr, "error, message initialisation failed\n");
>   		return -1;
>   	}
> @@ -103,14 +102,13 @@ static int sock_list_cb(const struct nlmsghdr *nlh, void *data)
>   static int cmd_socket_list(struct nlmsghdr *nlh, const struct cmd *cmd,
>   			   struct cmdl *cmdl, void *data)
>   {
> -	char buf[MNL_SOCKET_BUFFER_SIZE];
> -
>   	if (help_flag) {
>   		fprintf(stderr, "Usage: %s socket list\n", cmdl->argv[0]);
>   		return -EINVAL;
>   	}
>   
> -	if (!(nlh = msg_init(buf, TIPC_NL_SOCK_GET))) {
> +	nlh = msg_init(TIPC_NL_SOCK_GET);
> +	if (!nlh) {
>   		fprintf(stderr, "error, message initialisation failed\n");
>   		return -1;
>   	}
> diff --git a/tipc/tipc.c b/tipc/tipc.c
> index 60176a044f8d..9f23a4bfd25d 100644
> --- a/tipc/tipc.c
> +++ b/tipc/tipc.c
> @@ -13,7 +13,11 @@
>   #include <stdlib.h>
>   #include <getopt.h>
>   #include <unistd.h>
> +#include <linux/tipc_netlink.h>
> +#include <libmnl/libmnl.h>
> +#include <errno.h>
>   
> +#include "mnl_utils.h"
>   #include "bearer.h"
>   #include "link.h"
>   #include "nametable.h"
> @@ -26,6 +30,7 @@
>   
>   int help_flag;
>   int json;
> +struct mnlu_gen_socket tipc_nlg;
>   
>   static void about(struct cmdl *cmdl)
>   {
> @@ -110,8 +115,20 @@ int main(int argc, char *argv[])
>   	cmdl.argc = argc;
>   	cmdl.argv = argv;
>   
> -	if ((res = run_cmd(NULL, &cmd, cmds, &cmdl, NULL)) != 0)
> -		return 1;
> +	res = mnlu_gen_socket_open(&tipc_nlg, TIPC_GENL_V2_NAME,
> +				   TIPC_GENL_V2_VERSION);
> +	if (res) {
> +		fprintf(stderr,
> +			"Unable to get TIPC nl family id (module loaded?)\n");
> +		return -1;
> +	}
>   
> +	res = run_cmd(NULL, &cmd, cmds, &cmdl, &tipc_nlg);
> +	if (res != 0) {
> +		mnlu_gen_socket_close(&tipc_nlg);
> +		return -1;
> +	}
> +
> +	mnlu_gen_socket_close(&tipc_nlg);
>   	return 0;
>   }
Acked-by: Jon Maloy <jmaloy@redhat.com>



_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
