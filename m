Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 993F64C2F9A
	for <lists+tipc-discussion@lfdr.de>; Thu, 24 Feb 2022 16:27:05 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1nNG1C-0000NZ-N9; Thu, 24 Feb 2022 15:26:57 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <jmaloy@redhat.com>) id 1nNG1B-0000NN-Ae
 for tipc-discussion@lists.sourceforge.net; Thu, 24 Feb 2022 15:26:56 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 From:References:Cc:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=QRB/W7Ct6Fvwq8WNLWdOFSX0Quf6CZk21tMewLGkssY=; b=I6RK9StBTAh0VtbsRhIf7CTC/F
 mAdUKQjXrkR6Jt/dqgWMuk+qspxLYmjM29G+4URXK1WXMHw+LTIP+xSrjhC7se1nofpmM6H/2s3RR
 7Bg9jI2oLDK3Z6hPKo9VZD9jNjP3jrsbMijQE6lL97irbe2kSmL4kHeyymYHEeJRrCTY=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:References:Cc:To:
 Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=QRB/W7Ct6Fvwq8WNLWdOFSX0Quf6CZk21tMewLGkssY=; b=HwjzPl+Z5GvH52ctkVg7MJBoT5
 A8FnzhFVGtpq1QDVJRxqVe0XyyNZzG4xsjSkV3g5fjYDRBItKnpGb/3++IS4hfuZHK3+xgmobO8rA
 vAU4GE7goOM8IXKpuiE6b+OeICDFY9IjZvtZYHeP4Tasuz3Kr624HIZhe8ayMcVym3RU=;
Received: from us-smtp-delivery-124.mimecast.com ([170.10.129.124])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1nNG16-000811-En
 for tipc-discussion@lists.sourceforge.net; Thu, 24 Feb 2022 15:26:55 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1645716406;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=QRB/W7Ct6Fvwq8WNLWdOFSX0Quf6CZk21tMewLGkssY=;
 b=VH3b/D6Dkx8sbw29KTvBbuHYosFIo73DNzENyN7my06DL3iaa0UaaeQmyFHbQJzJSWvFb8
 v/PIQcbwwAbtZro3W/4ZhvHMBJIrWZHZ5CpprFHMHyhlVB1czA2CMqGVfVQ778Oc/PNAof
 6afR0/4Rylw1kEZRNGkMcYuUiOF7T04=
Received: from mail-qv1-f71.google.com (mail-qv1-f71.google.com
 [209.85.219.71]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-631-EMaJ78DBO_ySiyAqDjBUtg-1; Thu, 24 Feb 2022 10:26:45 -0500
X-MC-Unique: EMaJ78DBO_ySiyAqDjBUtg-1
Received: by mail-qv1-f71.google.com with SMTP id
 d16-20020a0cf0d0000000b004328ac68689so3217731qvl.3
 for <tipc-discussion@lists.sourceforge.net>;
 Thu, 24 Feb 2022 07:26:45 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
 :content-language:to:cc:references:from:in-reply-to
 :content-transfer-encoding;
 bh=QRB/W7Ct6Fvwq8WNLWdOFSX0Quf6CZk21tMewLGkssY=;
 b=cHv9qsIA2qcxyjEz6NsB7EQCW1CDvoPuntlJDwynRl8hEEIsEUr+53gY9RmIj+xG44
 d4TujQo4YA+JaaJGno2TIKpspzmEOThsi+BUg7p+Jik/v+WVtUb359UWT2L0+uvvdxis
 lUwiTJk/ZmxEjWds6+g2JwblmAcJqJYheihy9And0LeWnfmiIsHq0hQe83+pRQC/VtgA
 n0813osnwdcsMT4zEy8Y94/ljm4E/D6KjpFc3JmWC8dIP5qexQkTCOwJ6CV5cAum1qKV
 I0jV9x15SVhA2K0NBDgkTTJgtzn/AI/sMQUIQ6oFZP4TrfkJO17XuwAPN6UjJ2eqLaCX
 I+hQ==
X-Gm-Message-State: AOAM530dqTX3er3QVUnpQlEWcwXp+LPkVuV15e+NQE1BDS/61DvsNaUj
 5snO+58cMtlv3sLizu2xrkkyC0pjcCrZM9oGGxhPz4GOtFUpNxhCSoZLgJ/k2tDH7ar5WK+7HvQ
 GWlpSjgfO48hKHAelbK59X+RLG68O2/BBW1z/
X-Received: by 2002:a05:622a:18b:b0:2de:8f67:b3e2 with SMTP id
 s11-20020a05622a018b00b002de8f67b3e2mr2793290qtw.104.1645716404335; 
 Thu, 24 Feb 2022 07:26:44 -0800 (PST)
X-Google-Smtp-Source: ABdhPJzp5vc0QNLAJZl2b5ZiFxc9Cr3aXdBPfffT7AqQZBnqifESVp3GReU8S1yBO6pNLWMguAaOzw==
X-Received: by 2002:a05:622a:18b:b0:2de:8f67:b3e2 with SMTP id
 s11-20020a05622a018b00b002de8f67b3e2mr2793263qtw.104.1645716404020; 
 Thu, 24 Feb 2022 07:26:44 -0800 (PST)
Received: from [10.0.0.97] ([24.225.241.171])
 by smtp.gmail.com with ESMTPSA id bp18sm1780832qtb.72.2022.02.24.07.26.42
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 24 Feb 2022 07:26:43 -0800 (PST)
Message-ID: <a733fc64-0c59-f495-5f12-d90750fd32d7@redhat.com>
Date: Thu, 24 Feb 2022 10:26:41 -0500
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.3.0
To: Dan Carpenter <dan.carpenter@oracle.com>,
 Richard Alpe <richard.alpe@ericsson.com>
References: <20220222134311.GA2716@kili>
From: Jon Maloy <jmaloy@redhat.com>
In-Reply-To: <20220222134311.GA2716@kili>
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=jmaloy@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
X-Spam-Score: -0.9 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On 2/22/22 08:43,
 Dan Carpenter wrote: > These tests are supposed
 to check if the loop exited via a break or not. > However the tests are wrong
 because if we did not exit via a break then > "p" is not [...] 
 Content analysis details:   (-0.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [170.10.129.124 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H5      RBL: Excellent reputation (+5)
 [170.10.129.124 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid -0.0 T_SCC_BODY_TEXT_LINE   No description available.
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.0 NICE_REPLY_A           Looks like a legit reply (A)
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1nNG16-000811-En
Subject: Re: [tipc-discussion] [PATCH net] tipc: Fix end of loop tests for
 list_for_each_entry()
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
Cc: Erik Hugne <erik.hugne@ericsson.com>, netdev@vger.kernel.org,
 kernel-janitors@vger.kernel.org, tipc-discussion@lists.sourceforge.net,
 Jakub Kicinski <kuba@kernel.org>, "David S. Miller" <davem@davemloft.net>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: tipc-discussion-bounces@lists.sourceforge.net



On 2/22/22 08:43, Dan Carpenter wrote:
> These tests are supposed to check if the loop exited via a break or not.
> However the tests are wrong because if we did not exit via a break then
> "p" is not a valid pointer.  In that case, it's the equivalent of
> "if (*(u32 *)sr == *last_key) {".  That's going to work most of the time,
> but there is a potential for those to be equal.
>
> Fixes: 1593123a6a49 ("tipc: add name table dump to new netlink api")
> Fixes: 1a1a143daf84 ("tipc: add publication dump to new netlink api")
> Signed-off-by: Dan Carpenter <dan.carpenter@oracle.com>
> ---
>   net/tipc/name_table.c | 2 +-
>   net/tipc/socket.c     | 2 +-
>   2 files changed, 2 insertions(+), 2 deletions(-)
>
> diff --git a/net/tipc/name_table.c b/net/tipc/name_table.c
> index 01396dd1c899..1d8ba233d047 100644
> --- a/net/tipc/name_table.c
> +++ b/net/tipc/name_table.c
> @@ -967,7 +967,7 @@ static int __tipc_nl_add_nametable_publ(struct tipc_nl_msg *msg,
>   		list_for_each_entry(p, &sr->all_publ, all_publ)
>   			if (p->key == *last_key)
>   				break;
> -		if (p->key != *last_key)
> +		if (list_entry_is_head(p, &sr->all_publ, all_publ))
>   			return -EPIPE;
>   	} else {
>   		p = list_first_entry(&sr->all_publ,
> diff --git a/net/tipc/socket.c b/net/tipc/socket.c
> index 3e63c83e641c..7545321c3440 100644
> --- a/net/tipc/socket.c
> +++ b/net/tipc/socket.c
> @@ -3749,7 +3749,7 @@ static int __tipc_nl_list_sk_publ(struct sk_buff *skb,
>   			if (p->key == *last_publ)
>   				break;
>   		}
> -		if (p->key != *last_publ) {
> +		if (list_entry_is_head(p, &tsk->publications, binding_sock)) {
>   			/* We never set seq or call nl_dump_check_consistent()
>   			 * this means that setting prev_seq here will cause the
>   			 * consistence check to fail in the netlink callback
Acked-by: Jon Maloy <jmaloy@redhat.com>



_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
