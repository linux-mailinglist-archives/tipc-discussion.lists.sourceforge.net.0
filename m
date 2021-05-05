Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 859AB37497F
	for <lists+tipc-discussion@lfdr.de>; Wed,  5 May 2021 22:31:21 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1leOAp-0001S1-0p; Wed, 05 May 2021 20:31:11 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <jmaloy@redhat.com>) id 1leOAn-0001Rj-Eq
 for tipc-discussion@lists.sourceforge.net; Wed, 05 May 2021 20:31:09 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 MIME-Version:Date:Message-ID:From:References:To:Subject:Sender:Reply-To:Cc:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=e5DWpWHSwHJobrPuTytJGt/leswRxnDhS5adJwicgno=; b=eyIRc5daZ2EI1K/kKCSH+3Id80
 z3nvNGGqxEEjb2K23KX/AVi4+nEjuu4M/d4Dh79TBW915opoQUk60YBkrHN2D7E8LjnxJK2I8OB3x
 gULzQ7OKpbrtR3mxJuiaYUEwM3KZNaFKwOGhXx8hUuyM6Vv019GakGPPJyhKfeaFYmYY=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:Date:
 Message-ID:From:References:To:Subject:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=e5DWpWHSwHJobrPuTytJGt/leswRxnDhS5adJwicgno=; b=RboeOrXKaiJ2SDzPLN3wdD0uMJ
 rt7Rl+75OaoBfQtsmtJp3E2GX1r+Fsd9vc8oU8RhgcaUPr8/NeSm7OtRrzNVX0VxdyimBHFr0z4tX
 k+dnj7/oybecSlzDSjgOx8rdfoxErWAejRvi/U+GnErST8P0fax1tDIlC9atFQFeHdqI=;
Received: from us-smtp-delivery-124.mimecast.com ([170.10.133.124])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1leOAi-0008BY-NE
 for tipc-discussion@lists.sourceforge.net; Wed, 05 May 2021 20:31:09 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1620246658;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=e5DWpWHSwHJobrPuTytJGt/leswRxnDhS5adJwicgno=;
 b=Ta1UfaM0zeFJAoMSLHXpf561CfKBUcWcgqxZ2N3L+jwRKjePx0rb7NfvIp9hI5CIMkOPyT
 I1thNipnE6UDJxmK+N6asH8CmZQbToKt5ffYiQoafNINsIPZ9xJT0Szj42WOdVifL8nYhX
 8qw1Ws5HRPR2UqyJHfcJdWuv8Ar62LI=
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com
 [209.85.222.197]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-316-QhF7vpIDNyCrgYCdIm2N_A-1; Wed, 05 May 2021 16:30:57 -0400
X-MC-Unique: QhF7vpIDNyCrgYCdIm2N_A-1
Received: by mail-qk1-f197.google.com with SMTP id
 s10-20020a05620a030ab02902e061a1661fso1987846qkm.12
 for <tipc-discussion@lists.sourceforge.net>;
 Wed, 05 May 2021 13:30:57 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-transfer-encoding
 :content-language;
 bh=e5DWpWHSwHJobrPuTytJGt/leswRxnDhS5adJwicgno=;
 b=qG2rGdNLqOSq+NK8vYS8IT1Bgfw5mxc7IwRoG6UYESjnvPspwJn7lR1xo3fotE+FMf
 lwsR1aBIuixPEfk25C/2kpFGl/AvDDtf3BR+KTQhR3A5v+6kgkN5dztJnuypuGpmqQFP
 t08TtFIxydXIhWXM5oNdjKt+4X8EjA7O8CkUie6hSTOs9M2izFHIbKQxnRdBeWbCkfcZ
 2jBBsxw7xAMO1DBK11akYm6Cv4WiF4StFC+WcDa6e9wE692Jw4z3FlVbiufmotarZUiS
 ewZhiHY3aFl3PizQ7wXG3ZN50izl/3aSvsv4MbN9GLf/AnpBkKcbj+qq8pXcIBGKDa4T
 uoUA==
X-Gm-Message-State: AOAM5321H99UPCWVK6PymVyBdz4f3jDiTXcdZ6tCE4UNPbJ3BnHtf/Z5
 MPg6ZtewVmHN2k8IQVAFx79KnSPRs+YU162EsMmg3HGi9n+LkLpGuk02eFxgKdgRFcpCTSdz6BA
 sggwCpyfNvbFOvGXHFZVEuI0xkfVFmzxzoagy
X-Received: by 2002:a05:622a:d1:: with SMTP id p17mr453774qtw.86.1620246657102; 
 Wed, 05 May 2021 13:30:57 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJxqzNWaB39pm3OZA+KRg58AG/GKq6+VAs/BDcPzPienR1K5yivFFKl8qbzQNzjCzXTZ+6bHaw==
X-Received: by 2002:a05:622a:d1:: with SMTP id p17mr453752qtw.86.1620246656849; 
 Wed, 05 May 2021 13:30:56 -0700 (PDT)
Received: from [192.168.0.106] ([24.225.235.43])
 by smtp.gmail.com with ESMTPSA id j196sm393947qke.25.2021.05.05.13.30.55
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 05 May 2021 13:30:56 -0700 (PDT)
To: Hoang Le <hoang.h.le@dektech.com.au>,
 tipc-discussion@lists.sourceforge.net, maloy@donjonn.com,
 ying.xue@windriver.com, tung.q.nguyen@dektech.com.au
References: <20210504045631.11304-1-hoang.h.le@dektech.com.au>
From: Jon Maloy <jmaloy@redhat.com>
Message-ID: <d1b6351d-ef88-e37b-3eb9-30ed68c43840@redhat.com>
Date: Wed, 5 May 2021 16:30:55 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.8.1
MIME-Version: 1.0
In-Reply-To: <20210504045631.11304-1-hoang.h.le@dektech.com.au>
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=jmaloy@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
X-Spam-Score: -0.8 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: dektech.com.au]
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [170.10.133.124 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.0 NICE_REPLY_A           Looks like a legit reply (A)
 -0.7 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1leOAi-0008BY-NE
Subject: Re: [tipc-discussion] [iproute2-next v2] tipc: call a sub-routine
 in separate socket
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



On 5/4/21 12:56 AM, Hoang Le wrote:
> When receiving a result from first query to netlink, we may exec
> a another query inside the callback. If calling this sub-routine
> in the same socket, it will be discarded the result from previous
> exection.
> To avoid this we perform a nested query in separate socket.
>
> Fixes: 202102830663 ("tipc: use the libmnl functions in lib/mnl_utils.c")
> Signed-off-by: Hoang Le <hoang.h.le@dektech.com.au>
> ---
>   tipc/bearer.c | 50 +++++++++++++++++++++++++++++++++++++++++++++-----
>   tipc/link.c   | 15 +++++++++++++--
>   tipc/socket.c | 17 +++++++++++++++--
>   3 files changed, 73 insertions(+), 9 deletions(-)
>
> diff --git a/tipc/bearer.c b/tipc/bearer.c
> index 2afc48b9b108..968293bc9160 100644
> --- a/tipc/bearer.c
> +++ b/tipc/bearer.c
> @@ -20,7 +20,9 @@
>   #include <linux/tipc.h>
>   #include <linux/genetlink.h>
>   #include <linux/if.h>
> +#include <libmnl/libmnl.h>
>   
> +#include "mnl_utils.h"
>   #include "utils.h"
>   #include "cmdl.h"
>   #include "msg.h"
> @@ -98,16 +100,28 @@ static int get_netid_cb(const struct nlmsghdr *nlh, void *data)
>   
>   static int generate_multicast(short af, char *buf, int bufsize)
>   {
> +	struct mnlu_gen_socket bearer_nlg;
>   	struct nlmsghdr *nlh;
>   	int netid;
> +	int err = 0;
>   
> -	nlh = msg_init(TIPC_NL_NET_GET);
> +	err = mnlu_gen_socket_open(&bearer_nlg, TIPC_GENL_V2_NAME,
> +				   TIPC_GENL_V2_VERSION);
> +	if (err)
> +		return -1;
> +
> +	nlh = mnlu_gen_socket_cmd_prepare(&bearer_nlg, TIPC_NL_NET_GET,
> +					  NLM_F_REQUEST | NLM_F_DUMP);
>   	if (!nlh) {
>   		fprintf(stderr, "error, message initialization failed\n");
> +		mnlu_gen_socket_close(&bearer_nlg);
>   		return -1;
>   	}
> -	if (msg_dumpit(nlh, get_netid_cb, &netid)) {
> +
> +	err = mnlu_gen_socket_sndrcv(&bearer_nlg, nlh, get_netid_cb, &netid);
> +	if (err) {
>   		fprintf(stderr, "error, failed to fetch TIPC network id from kernel\n");
> +		mnlu_gen_socket_close(&bearer_nlg);
>   		return -EINVAL;
>   	}
>   	if (af == AF_INET)
> @@ -115,6 +129,7 @@ static int generate_multicast(short af, char *buf, int bufsize)
>   	else
>   		snprintf(buf, bufsize, "ff02::%u", netid);
>   
> +	mnlu_gen_socket_close(&bearer_nlg);
>   	return 0;
>   }
>   
> @@ -794,10 +809,35 @@ static int bearer_get_udp_cb(const struct nlmsghdr *nlh, void *data)
>   	if ((cb_data->attr == TIPC_NLA_UDP_REMOTE) &&
>   	    (cb_data->prop == UDP_PROP_IP) &&
>   	    opts[TIPC_NLA_UDP_MULTI_REMOTEIP]) {
> -		struct genlmsghdr *genl = mnl_nlmsg_get_payload(cb_data->nlh);
> +		struct mnlu_gen_socket bearer_nlg;
> +		struct nlattr *attr;
> +		struct nlmsghdr *h;
> +		const char *bname;
> +		int err = 0;
> +
> +		err = mnlu_gen_socket_open(&bearer_nlg, TIPC_GENL_V2_NAME,
> +					   TIPC_GENL_V2_VERSION);
> +		if (err)
> +			return -1;
> +
> +		h = mnlu_gen_socket_cmd_prepare(&bearer_nlg,
> +						TIPC_NL_UDP_GET_REMOTEIP,
> +						NLM_F_REQUEST | NLM_F_DUMP);
> +		if (!h) {
> +			fprintf(stderr, "error, message initialization failed\n");
> +			mnlu_gen_socket_close(&bearer_nlg);
> +			return -1;
> +		}
>   
> -		genl->cmd = TIPC_NL_UDP_GET_REMOTEIP;
> -		return msg_dumpit(cb_data->nlh, bearer_dump_udp_cb, NULL);
> +		attr = mnl_attr_nest_start(h, TIPC_NLA_BEARER);
> +		bname = mnl_attr_get_str(attrs[TIPC_NLA_BEARER_NAME]);
> +		mnl_attr_put_strz(h, TIPC_NLA_BEARER_NAME, bname);
> +		mnl_attr_nest_end(h, attr);
> +
> +		err = mnlu_gen_socket_sndrcv(&bearer_nlg, h,
> +					     bearer_dump_udp_cb, NULL);
> +		mnlu_gen_socket_close(&bearer_nlg);
> +		return err;
>   	}
>   
>   	addr = mnl_attr_get_payload(opts[cb_data->attr]);
> diff --git a/tipc/link.c b/tipc/link.c
> index 2123f109c694..9994ada2a367 100644
> --- a/tipc/link.c
> +++ b/tipc/link.c
> @@ -17,7 +17,9 @@
>   #include <linux/tipc_netlink.h>
>   #include <linux/tipc.h>
>   #include <linux/genetlink.h>
> +#include <libmnl/libmnl.h>
>   
> +#include "mnl_utils.h"
>   #include "cmdl.h"
>   #include "msg.h"
>   #include "link.h"
> @@ -993,13 +995,20 @@ exit:
>   
>   static int link_mon_peer_list(uint32_t mon_ref)
>   {
> +	struct mnlu_gen_socket link_nlg;
>   	struct nlmsghdr *nlh;
>   	struct nlattr *nest;
>   	int err = 0;
>   
> -	nlh = msg_init(TIPC_NL_MON_PEER_GET);
> +	err = mnlu_gen_socket_open(&link_nlg, TIPC_GENL_V2_NAME,
> +				   TIPC_GENL_V2_VERSION);
> +	if (err)
> +		return -1;
> +	nlh = mnlu_gen_socket_cmd_prepare(&link_nlg, TIPC_NL_MON_PEER_GET,
> +					  NLM_F_REQUEST | NLM_F_DUMP);
>   	if (!nlh) {
>   		fprintf(stderr, "error, message initialisation failed\n");
> +		mnlu_gen_socket_close(&link_nlg);
>   		return -1;
>   	}
>   
> @@ -1007,7 +1016,9 @@ static int link_mon_peer_list(uint32_t mon_ref)
>   	mnl_attr_put_u32(nlh, TIPC_NLA_MON_REF, mon_ref);
>   	mnl_attr_nest_end(nlh, nest);
>   
> -	err = msg_dumpit(nlh, link_mon_peer_list_cb, NULL);
> +	err = mnlu_gen_socket_sndrcv(&link_nlg, nlh, link_mon_peer_list_cb,
> +				     NULL);
> +	mnlu_gen_socket_close(&link_nlg);
>   	return err;
>   }
>   
> diff --git a/tipc/socket.c b/tipc/socket.c
> index deae12af4409..597ffd91af52 100644
> --- a/tipc/socket.c
> +++ b/tipc/socket.c
> @@ -15,7 +15,9 @@
>   #include <linux/tipc.h>
>   #include <linux/tipc_netlink.h>
>   #include <linux/genetlink.h>
> +#include <libmnl/libmnl.h>
>   
> +#include "mnl_utils.h"
>   #include "cmdl.h"
>   #include "msg.h"
>   #include "socket.h"
> @@ -44,12 +46,21 @@ static int publ_list_cb(const struct nlmsghdr *nlh, void *data)
>   
>   static int publ_list(uint32_t sock)
>   {
> +	struct mnlu_gen_socket sock_nlg;
>   	struct nlmsghdr *nlh;
>   	struct nlattr *nest;
> +	int err;
>   
> -	nlh = msg_init(TIPC_NL_PUBL_GET);
> +	err = mnlu_gen_socket_open(&sock_nlg, TIPC_GENL_V2_NAME,
> +				   TIPC_GENL_V2_VERSION);
> +	if (err)
> +		return -1;
> +
> +	nlh = mnlu_gen_socket_cmd_prepare(&sock_nlg, TIPC_NL_PUBL_GET,
> +					  NLM_F_REQUEST | NLM_F_DUMP);
>   	if (!nlh) {
>   		fprintf(stderr, "error, message initialisation failed\n");
> +		mnlu_gen_socket_close(&sock_nlg);
>   		return -1;
>   	}
>   
> @@ -57,7 +68,9 @@ static int publ_list(uint32_t sock)
>   	mnl_attr_put_u32(nlh, TIPC_NLA_SOCK_REF, sock);
>   	mnl_attr_nest_end(nlh, nest);
>   
> -	return msg_dumpit(nlh, publ_list_cb, NULL);
> +	err = mnlu_gen_socket_sndrcv(&sock_nlg, nlh, publ_list_cb, NULL);
> +	mnlu_gen_socket_close(&sock_nlg);
> +	return err;
>   }
>   
>   static int sock_list_cb(const struct nlmsghdr *nlh, void *data)
Looks good.
Acked-by: Jon Maloy <jmaloy@redhat.com>



_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
