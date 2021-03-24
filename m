Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 75BCF3483DC
	for <lists+tipc-discussion@lfdr.de>; Wed, 24 Mar 2021 22:40:17 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1lPBEa-0007Jz-DS; Wed, 24 Mar 2021 21:40:12 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <jmaloy@redhat.com>) id 1lPBEZ-0007Jo-6s
 for tipc-discussion@lists.sourceforge.net; Wed, 24 Mar 2021 21:40:11 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 MIME-Version:Date:Message-ID:From:References:To:Subject:Sender:Reply-To:Cc:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=sQelrLMHlXBzPHZPBF+hdDO664iaET7mBXTrfCmV3c0=; b=XO3k5hjBqN6dpaAupUr8NZvHlC
 3OUpGhNGJg04KmW/awccvZr4VFtnIZJh1AAWULmw1I6Jf8NsP+HBHJJ9f/5WuM6PWHamBm/aEaU8l
 YVZagZeJCEuuZRAlNiNjoZyu3zFjIbM7xBDW/hZvT/uDKPrBQn9aNjt3KSfAL712+SnM=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:Date:
 Message-ID:From:References:To:Subject:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=sQelrLMHlXBzPHZPBF+hdDO664iaET7mBXTrfCmV3c0=; b=aDvV/NVnEzUK1K5kMrDUbeQeeu
 imKN+Qy/dlgq3m9h9BYvyqBvE9fPyi/rOaXQF/0x51Tr9uHyEXnBd76HAJjsfYetmrSQncNNqOh3D
 8Ac7O2EQMLUrxYW2KzMml/fXbpic0qmIuAdXIg/ZM0D3eG+z7M55SmBZzASbX+W3JJJo=;
Received: from us-smtp-delivery-124.mimecast.com ([63.128.21.124])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-SHA384:256) (Exim 4.92.3)
 id 1lPBES-00022v-8y
 for tipc-discussion@lists.sourceforge.net; Wed, 24 Mar 2021 21:40:11 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1616621998;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=sQelrLMHlXBzPHZPBF+hdDO664iaET7mBXTrfCmV3c0=;
 b=cIN8Ra4839FFy4Fn+zQnUt6vU8rUjpkG/Ja/BV1SK5U3Qk670Qd9kXuMlBEyx4EvIbvY/H
 2X8Ij3igUBqtXOA0IOd7mCL/U+X0FBJ3+6aLazXO71DMYRgBKR2gQXh7UCXgozPUO7p8cM
 ygjQIjsY0WP5grZQYEavoXFxjY37wO0=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-466-AciwTyQQM92rPgKBPGAyIQ-1; Wed, 24 Mar 2021 17:39:56 -0400
X-MC-Unique: AciwTyQQM92rPgKBPGAyIQ-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com
 [10.5.11.14])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id DE1AD1013731;
 Wed, 24 Mar 2021 21:39:54 +0000 (UTC)
Received: from [10.10.114.63] (ovpn-114-63.rdu2.redhat.com [10.10.114.63])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 7983929245;
 Wed, 24 Mar 2021 21:39:53 +0000 (UTC)
To: Hoang Le <hoang.h.le@dektech.com.au>,
 tipc-discussion@lists.sourceforge.net, maloy@donjonn.com,
 ying.xue@windriver.com, tuan.a.vo@dektech.com.au,
 tung.q.nguyen@dektech.com.au
References: <20210323090646.8066-1-hoang.h.le@dektech.com.au>
From: Jon Maloy <jmaloy@redhat.com>
Message-ID: <22e5de97-4f3f-7127-46cc-77a6ecf44078@redhat.com>
Date: Wed, 24 Mar 2021 17:39:52 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.6.0
MIME-Version: 1.0
In-Reply-To: <20210323090646.8066-1-hoang.h.le@dektech.com.au>
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
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
 [63.128.21.124 listed in wl.mailspike.net]
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.0 NICE_REPLY_A           Looks like a legit reply (A)
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1lPBES-00022v-8y
Subject: Re: [tipc-discussion] [iproute2-next v2] tipc: add support for the
 netlink extack
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



On 3/23/21 5:06 AM, Hoang Le wrote:
> Add support extack in tipc to dump the netlink extack error messages
> (i.e -EINVAL) sent from kernel.
>
> Signed-off-by: Hoang Le <hoang.h.le@dektech.com.au>
> ---
>   tipc/msg.c | 29 ++++++++++++++++++++++-------
>   1 file changed, 22 insertions(+), 7 deletions(-)
>
> diff --git a/tipc/msg.c b/tipc/msg.c
> index dc09d05048f3..f29b2f8d35ad 100644
> --- a/tipc/msg.c
> +++ b/tipc/msg.c
> @@ -18,6 +18,7 @@
>   #include <linux/genetlink.h>
>   #include <libmnl/libmnl.h>
>   
> +#include "libnetlink.h"
>   #include "msg.h"
>   
>   int parse_attrs(const struct nlattr *attr, void *data)
> @@ -49,6 +50,7 @@ static struct mnl_socket *msg_send(struct nlmsghdr *nlh)
>   {
>   	int ret;
>   	struct mnl_socket *nl;
> +	int one = 1;
>   
>   	nl = mnl_socket_open(NETLINK_GENERIC);
>   	if (nl == NULL) {
> @@ -56,6 +58,8 @@ static struct mnl_socket *msg_send(struct nlmsghdr *nlh)
>   		return NULL;
>   	}
>   
> +	/* support to get extended ACK */
> +	mnl_socket_setsockopt(nl, NETLINK_EXT_ACK, &one, sizeof(one));
>   	ret = mnl_socket_bind(nl, 0, MNL_SOCKET_AUTOPID);
>   	if (ret < 0) {
>   		perror("mnl_socket_bind");
> @@ -73,21 +77,32 @@ static struct mnl_socket *msg_send(struct nlmsghdr *nlh)
>   
>   static int msg_recv(struct mnl_socket *nl, mnl_cb_t callback, void *data, int seq)
>   {
> -	int ret;
>   	unsigned int portid;
>   	char buf[MNL_SOCKET_BUFFER_SIZE];
> +	struct nlmsghdr *h;
> +	size_t num_bytes;
> +	int is_err = 0;
> +	int ret = 0;
>   
>   	portid = mnl_socket_get_portid(nl);
>   
> -	ret = mnl_socket_recvfrom(nl, buf, sizeof(buf));
> -	while (ret > 0) {
> -		ret = mnl_cb_run(buf, ret, seq, portid, callback, data);
> +	num_bytes = mnl_socket_recvfrom(nl, buf, sizeof(buf));
> +	while (num_bytes > 0) {
> +		ret = mnl_cb_run(buf, num_bytes, seq, portid, callback, data);
>   		if (ret <= 0)
>   			break;
> -		ret = mnl_socket_recvfrom(nl, buf, sizeof(buf));
> +		num_bytes = mnl_socket_recvfrom(nl, buf, sizeof(buf));
> +	}
> +
> +	if (ret == -1) {
> +		if (num_bytes > 0) {
> +			h = (struct nlmsghdr *)buf;
> +			is_err = nl_dump_ext_ack(h, NULL);
> +		}
> +
> +		if (!is_err)
> +			perror("error");
>   	}
> -	if (ret == -1)
> -		perror("error");
>   
>   	mnl_socket_close(nl);
>   
Acked-by: Jon Maloy <jmaloy@redhat.com>

Thanks, Hoang.



_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
