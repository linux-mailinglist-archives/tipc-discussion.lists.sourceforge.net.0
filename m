Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 055DC253609
	for <lists+tipc-discussion@lfdr.de>; Wed, 26 Aug 2020 19:38:02 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1kAzMx-0001EK-SY; Wed, 26 Aug 2020 17:37:55 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <jmaloy@redhat.com>) id 1kAzMw-0001EC-Jc
 for tipc-discussion@lists.sourceforge.net; Wed, 26 Aug 2020 17:37:54 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 MIME-Version:Date:Message-ID:From:References:To:Subject:Sender:Reply-To:Cc:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=jQikjWlqZgLk+dQMGqPBytQbYSfd33TC9LVWnRoujDo=; b=fEyG1CwUqXWXozVVRFSR21gW52
 dWiHu2enqyUPo9xGRv6x0WD8wo6SRW691MRH1EzqWn76lTDKpP4oksQOyTRLG4nIuJqpWaRld0QMl
 23Y1/yKmS3WpCBjh4JdzWE7a6+qcN9r/UIY8yNf+f79Tuxyo2JvB/B9WskdxeA1L1DNo=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:Date:
 Message-ID:From:References:To:Subject:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=jQikjWlqZgLk+dQMGqPBytQbYSfd33TC9LVWnRoujDo=; b=RwqVoN1QZvqcmF38sFfwncfdNR
 e737DMIA0u1Q+CkCn7zxnVRHv+Xh2mExuMuO/lqHfLzSV8muHoLfkxBWphJy8Pvr+nuhXaNYm9wp7
 v/WBY6pHaBTk0pYYL6VemY/nkYN4krMeZBFxkYzS++zD8EbWSTiBkw/f5x9zyWE8bqaw=;
Received: from us-smtp-delivery-1.mimecast.com ([207.211.31.120]
 helo=us-smtp-1.mimecast.com)
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-SHA384:256) (Exim 4.92.2)
 id 1kAzMs-001W6s-OT
 for tipc-discussion@lists.sourceforge.net; Wed, 26 Aug 2020 17:37:54 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1598463464;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=jQikjWlqZgLk+dQMGqPBytQbYSfd33TC9LVWnRoujDo=;
 b=fd5hn7WjBloCzjDH4Gko2xNwAlLR5Ad1rrUcgkYy2N+wYiLTpOvqRkoHJYQHNcm3Uo2xKR
 oBilpxioHgezd6mDCGm0ZqGmVO5gmropvXWhzMu5HOzdfXighGjqAZimMi7LrdOMDeKJUs
 wrQzzEmK57h4UNa3TDv+Tl0Sj51a4JI=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-331-lHmrdbUNPyi_lS2Oxw8mjA-1; Wed, 26 Aug 2020 13:37:39 -0400
X-MC-Unique: lHmrdbUNPyi_lS2Oxw8mjA-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com
 [10.5.11.15])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 46B8A1DE12;
 Wed, 26 Aug 2020 17:37:38 +0000 (UTC)
Received: from [10.10.113.6] (ovpn-113-6.rdu2.redhat.com [10.10.113.6])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 3FC0A71914;
 Wed, 26 Aug 2020 17:37:37 +0000 (UTC)
To: Hoang Huu Le <hoang.h.le@dektech.com.au>, maloy@donjonn.com,
 tipc-discussion@lists.sourceforge.net
References: <20200824100044.14438-1-hoang.h.le@dektech.com.au>
From: Jon Maloy <jmaloy@redhat.com>
Message-ID: <1b80fd54-939f-1bfd-ce84-6e89ec5925d0@redhat.com>
Date: Wed, 26 Aug 2020 13:37:36 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20200824100044.14438-1-hoang.h.le@dektech.com.au>
Content-Language: en-US
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=jmaloy@redhat.com
X-Mimecast-Spam-Score: 0.003
X-Mimecast-Originator: redhat.com
X-Spam-Score: -3.3 (---)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [207.211.31.120 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [207.211.31.120 listed in wl.mailspike.net]
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: dektech.com.au]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -2.2 NICE_REPLY_A           Looks like a legit reply (A)
 -1.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
X-Headers-End: 1kAzMs-001W6s-OT
Subject: Re: [tipc-discussion] [iproute2-next v2] tipc: support 128bit node
 identity for peer removing
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



On 8/24/20 6:00 AM, Hoang Huu Le wrote:
> From: Hoang Le <hoang.h.le@dektech.com.au>
>
> Problem:
> In kernel upstream, we add the support to set node identity with
> 128bit. However, we are still using legacy format in command tipc
> peer removing. Then, we got a problem when trying to remove
> offline node i.e:
>
> $ tipc node list
> Node Identity                    Hash     State
> d6babc1c1c6d                     1cbcd7ca down
>
> $ tipc peer remove address d6babc1c1c6d
> invalid network address, syntax: Z.C.N
> error: No such device or address
>
> Solution:
> We add the support to remove a specific node down with 128bit
> node identifier, as an alternative to legacy 32-bit node address.
>
> Signed-off-by: Hoang Le <hoang.h.le@dektech.com.au>
> Signed-off-by: Hoang Huu Le <hoang.h.le@dektech.com.au>
> ---
>   tipc/peer.c | 53 ++++++++++++++++++++++++++++++++++++++++++++++++++++-
>   1 file changed, 52 insertions(+), 1 deletion(-)
>
> diff --git a/tipc/peer.c b/tipc/peer.c
> index f6380777033d..f14ec35e6f71 100644
> --- a/tipc/peer.c
> +++ b/tipc/peer.c
> @@ -59,17 +59,68 @@ static int cmd_peer_rm_addr(struct nlmsghdr *nlh, const struct cmd *cmd,
>   	return msg_doit(nlh, NULL, NULL);
>   }
>   
> +static int cmd_peer_rm_nodeid(struct nlmsghdr *nlh, const struct cmd *cmd,
> +			      struct cmdl *cmdl, void *data)
> +{
> +	char buf[MNL_SOCKET_BUFFER_SIZE];
> +	__u8 id[16] = {0,};
> +	__u64 *w0 = (__u64 *)&id[0];
> +	__u64 *w1 = (__u64 *)&id[8];
> +	struct nlattr *nest;
> +	char *str;
> +
> +	if (cmdl->argc != cmdl->optind + 1) {
> +		fprintf(stderr, "Usage: %s peer remove identity NODEID\n",
> +			cmdl->argv[0]);
> +		return -EINVAL;
> +	}
> +
> +	str = shift_cmdl(cmdl);
> +	if (str2nodeid(str, id)) {
> +		fprintf(stderr, "Invalid node identity\n");
> +		return -EINVAL;
> +	}
> +
> +	nlh = msg_init(buf, TIPC_NL_PEER_REMOVE);
> +	if (!nlh) {
> +		fprintf(stderr, "error, message initialisation failed\n");
> +		return -1;
> +	}
> +
> +	nest = mnl_attr_nest_start(nlh, TIPC_NLA_NET);
> +	mnl_attr_put_u64(nlh, TIPC_NLA_NET_NODEID, *w0);
> +	mnl_attr_put_u64(nlh, TIPC_NLA_NET_NODEID_W1, *w1);
> +	mnl_attr_nest_end(nlh, nest);
> +
> +	return msg_doit(nlh, NULL, NULL);
> +}
> +
>   static void cmd_peer_rm_help(struct cmdl *cmdl)
> +{
> +	fprintf(stderr, "Usage: %s peer remove PROPERTY\n\n"
> +		"PROPERTIES\n"
> +		" identity NODEID         - Remove peer node identity\n",
> +		cmdl->argv[0]);
> +}
> +
> +static void cmd_peer_rm_addr_help(struct cmdl *cmdl)
>   {
>   	fprintf(stderr, "Usage: %s peer remove address ADDRESS\n",
>   		cmdl->argv[0]);
>   }
>   
> +static void cmd_peer_rm_nodeid_help(struct cmdl *cmdl)
> +{
> +	fprintf(stderr, "Usage: %s peer remove identity NODEID\n",
> +		cmdl->argv[0]);
> +}
> +
>   static int cmd_peer_rm(struct nlmsghdr *nlh, const struct cmd *cmd,
>   			struct cmdl *cmdl, void *data)
>   {
>   	const struct cmd cmds[] = {
> -		{ "address",	cmd_peer_rm_addr,	cmd_peer_rm_help },
> +		{ "address",  cmd_peer_rm_addr,   cmd_peer_rm_addr_help },
> +		{ "identity", cmd_peer_rm_nodeid, cmd_peer_rm_nodeid_help },
>   		{ NULL }
>   	};
>   
Acked-by: Jon Maloy <jmaloy@redhat.com>



_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
