Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E3E93D1AEF
	for <lists+tipc-discussion@lfdr.de>; Thu, 22 Jul 2021 02:54:06 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.92.3)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1m6MyM-0001BN-6y; Thu, 22 Jul 2021 00:53:58 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 (envelope-from <jmaloy@redhat.com>) id 1m6MyK-0001BD-BV
 for tipc-discussion@lists.sourceforge.net; Thu, 22 Jul 2021 00:53:56 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 MIME-Version:Date:Message-ID:From:References:To:Subject:Sender:Reply-To:Cc:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=QDm4PEW83bpPyTH2bpPc+M6cDSHHBdRe2zo4uSsH9gw=; b=UXa24NLjqlJYlUF47vbjoHKsjq
 pSCqi9aB70Os2sp/LD3Tt5Zm+qyiclcL/OMvFaW35M/Mv+eQ+CguVnPN+tjM0jP/UF0XSWJZFIKPW
 S9WeL7WOJUZWxorUGL4I9TEZJV8j5q4l7SuIakecx7qia1hWekmjw3FmK4LfZcPryQW8=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:Date:
 Message-ID:From:References:To:Subject:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=QDm4PEW83bpPyTH2bpPc+M6cDSHHBdRe2zo4uSsH9gw=; b=jm0j9tZSmAttVuqXJaqM3z6sPO
 5RzQSis1VTt6QQQhhSTWd5EYnZ9mSGJNmuv/hGKvzbihWKjldr1MahsfWRxxAygu2mABzLF/L+182
 OeVrv/OeqNPyHJpGRq2oD92cQQbt6XnrGXF3i0RFNxc8E/qVLZtJ23mHttaNFrtB6QMo=;
Received: from us-smtp-delivery-124.mimecast.com ([170.10.133.124])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1m6MyG-0006RR-Ov
 for tipc-discussion@lists.sourceforge.net; Thu, 22 Jul 2021 00:53:56 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1626915226;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=QDm4PEW83bpPyTH2bpPc+M6cDSHHBdRe2zo4uSsH9gw=;
 b=bha2F5wNehH01rjuxwGGbLPUPIeXIEXb5xopCF4CpfDcbaAnPK8Fi3yrQpul4xvzGPEGYF
 z8EcioA5qp/ZF3+V4RXirKh4DhpSBIlviw71zFDFk4S0hsn0G1IZpcg/OUo2Z3bZ8v6vqF
 oOJHhefCJybp+EmGI4jWnjU24eHgWw0=
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com
 [209.85.222.197]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-546-749TRMC-N2W55w2uNuc60A-1; Wed, 21 Jul 2021 20:53:45 -0400
X-MC-Unique: 749TRMC-N2W55w2uNuc60A-1
Received: by mail-qk1-f197.google.com with SMTP id
 f203-20020a379cd40000b02903b861bec838so2933972qke.7
 for <tipc-discussion@lists.sourceforge.net>;
 Wed, 21 Jul 2021 17:53:45 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=QDm4PEW83bpPyTH2bpPc+M6cDSHHBdRe2zo4uSsH9gw=;
 b=RgJZ/vxXhSFEhArRSq1mPLiNBC2sVuOG/PRcvzvpDNunzJraDexWFRe3m4wfEdLE+a
 ZFeIfSdCgyp+MKUfTRdGAVbYgDaB63McpooWmAwA/izGLA8JYSvmocG0X/PqYM5reSkW
 eiDLrct3bNyWbRdH6MOl4f8scL+occxL3is4+n+LM68jTKgwpIp0/ifBwy6tgt8W5EaL
 bRMvG/gMJ8aaRgauy+c65P1mlFIMsutaihagzJ7uavSvRGMDjc6CmUJJmXip4KXjwHk0
 LXCCUp146n2/uLKai2AWSULGw4AcVTocDZMHIqzDXKP80DdsiL8Sh1qxy3MfXguOtQ4W
 1oxg==
X-Gm-Message-State: AOAM532JZuwQnLIpVbjlVzgNY7MN8BISFJh5B7wuVE6QvSmmUd9UJmD2
 ScJ0j7aq9Hfgk9bTv4Zp3XPWiAtchGbDd5J0W4GzghX4LC0XeOBuxzm8wD9u3AMKa499mfP6WgY
 hq7l7Xc4N089ayPdXUr1s4bPOtd3kr53TgcXAxdcGLcTXiu/ZnzkttNf0h8rviXeE9zRdCNDuUn
 Hklofrzd4jew==
X-Received: by 2002:ac8:4250:: with SMTP id r16mr33054652qtm.189.1626915224741; 
 Wed, 21 Jul 2021 17:53:44 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJx149tjYoCKDk3tMg6xiIoLLK9JFe05tKEZfFxgtIfQK8ErY9OTroa4UW1lt6/3xOCxrOvERQ==
X-Received: by 2002:ac8:4250:: with SMTP id r16mr33054635qtm.189.1626915224440; 
 Wed, 21 Jul 2021 17:53:44 -0700 (PDT)
Received: from [192.168.0.104] ([24.225.235.43])
 by smtp.gmail.com with ESMTPSA id b15sm4426139qtt.9.2021.07.21.17.53.43
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 21 Jul 2021 17:53:43 -0700 (PDT)
To: Hoang Le <hoang.h.le@dektech.com.au>, maloy@donjonn.com,
 ying.xue@windriver.com, tipc-discussion@lists.sourceforge.net
References: <20210721091313.395334-1-hoang.h.le@dektech.com.au>
From: Jon Maloy <jmaloy@redhat.com>
Message-ID: <7c63a0ae-2eb3-09e2-a24b-34700013c2a1@redhat.com>
Date: Wed, 21 Jul 2021 20:53:42 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <20210721091313.395334-1-hoang.h.le@dektech.com.au>
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=jmaloy@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
X-Spam-Score: -1.7 (-)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [170.10.133.124 listed in wl.mailspike.net]
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
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.1 NICE_REPLY_A           Looks like a legit reply (A)
 -1.5 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1m6MyG-0006RR-Ov
Subject: Re: [tipc-discussion] [net] tipc: fix sleeping in tipc accept
 routine
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



On 21/07/2021 05:13, Hoang Le wrote:
> The release_sock() is blocking function, it would change the state
> after sleeping. In order to evaluate the stated condition outside
> the socket lock context, switch to use wait_woken() instead.
> 
> Signed-off-by: Hoang Le <hoang.h.le@dektech.com.au>
> ---
>   net/tipc/socket.c | 9 ++++-----
>   1 file changed, 4 insertions(+), 5 deletions(-)
> 
> diff --git a/net/tipc/socket.c b/net/tipc/socket.c
> index 9b0b311c7ec1..2c71828b7e5c 100644
> --- a/net/tipc/socket.c
> +++ b/net/tipc/socket.c
> @@ -2664,7 +2664,7 @@ static int tipc_listen(struct socket *sock, int len)
>   static int tipc_wait_for_accept(struct socket *sock, long timeo)
>   {
>   	struct sock *sk = sock->sk;
> -	DEFINE_WAIT(wait);
> +	DEFINE_WAIT_FUNC(wait, woken_wake_function);
>   	int err;
>   
>   	/* True wake-one mechanism for incoming connections: only
> @@ -2673,12 +2673,12 @@ static int tipc_wait_for_accept(struct socket *sock, long timeo)
>   	 * anymore, the common case will execute the loop only once.
>   	*/
>   	for (;;) {
> -		prepare_to_wait_exclusive(sk_sleep(sk), &wait,
> -					  TASK_INTERRUPTIBLE);
>   		if (timeo && skb_queue_empty(&sk->sk_receive_queue)) {
> +			add_wait_queue(sk_sleep(sk), &wait);
>   			release_sock(sk);
> -			timeo = schedule_timeout(timeo);
> +			timeo = wait_woken(&wait, TASK_INTERRUPTIBLE, timeo);
>   			lock_sock(sk);
> +			remove_wait_queue(sk_sleep(sk), &wait);
>   		}
>   		err = 0;
>   		if (!skb_queue_empty(&sk->sk_receive_queue))
> @@ -2690,7 +2690,6 @@ static int tipc_wait_for_accept(struct socket *sock, long timeo)
>   		if (signal_pending(current))
>   			break;
>   	}
> -	finish_wait(sk_sleep(sk), &wait);
>   	return err;
>   }
>   
> 
Acked-by: Jon Maloy <jmaloy@redhat.com>



_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
