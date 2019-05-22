Return-Path: <tipc-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+tipc-discussion@lfdr.de
Delivered-To: lists+tipc-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 660BF25EE4
	for <lists+tipc-discussion@lfdr.de>; Wed, 22 May 2019 09:58:23 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <tipc-discussion-bounces@lists.sourceforge.net>)
	id 1hTM8e-0001ha-27; Wed, 22 May 2019 07:58:16 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <Ying.Xue@windriver.com>) id 1hTM8d-0001hU-DH
 for tipc-discussion@lists.sourceforge.net; Wed, 22 May 2019 07:58:15 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 MIME-Version:Date:Message-ID:From:References:CC:To:Subject:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=8/pc/qCzkHe1lu1SvBDq+bhBUGAPhCbdzzuIIVFxTtQ=; b=ApfahkojT8HcEwndDrHZPPOPga
 PM+7DAGOczxS6VGxW9LZJw3HJhKpC63bIh1DG/ykbUvEzMMgkFJIw8Ha8QFIBxCZDd8d+l9idaIOM
 8v2boc+qFGCbVvA2VopieDvQrKLh/TuA+P/wSe+c7623cNhUvOEUmtUQzFXUTykFjZqI=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:Date:
 Message-ID:From:References:CC:To:Subject:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=8/pc/qCzkHe1lu1SvBDq+bhBUGAPhCbdzzuIIVFxTtQ=; b=H/WaphX807Sh3TmFWYClxR1oXR
 lUktwusOWsDvY44SrDeaVcMuL8f3h/yPWxXfWl4/H9jU2oQVtvfwhkRfC+MS++soY4j0ndaBooGZr
 AMB0KcinjGDabbV/At8r71ndPJw6W19C3WMLNsM12tEr4yTm71ZQIqisjKeO6OqxODPM=;
Received: from mail.windriver.com ([147.11.1.11])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.1:ECDHE-RSA-AES256-SHA:256) (Exim 4.90_1) id 1hTM8b-005Xk9-9i
 for tipc-discussion@lists.sourceforge.net; Wed, 22 May 2019 07:58:15 +0000
Received: from ALA-HCA.corp.ad.wrs.com ([147.11.189.40])
 by mail.windriver.com (8.15.2/8.15.1) with ESMTPS id x4M7vurP026148
 (version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
 Wed, 22 May 2019 00:57:56 -0700 (PDT)
Received: from [128.224.155.90] (128.224.155.90) by ALA-HCA.corp.ad.wrs.com
 (147.11.189.50) with Microsoft SMTP Server (TLS) id 14.3.439.0; Wed, 22 May
 2019 00:57:55 -0700
To: Chris Packham <chris.packham@alliedtelesis.co.nz>,
 <jon.maloy@ericsson.com>, <davem@davemloft.net>, <niveditas98@gmail.com>
References: <20190520034536.22782-1-chris.packham@alliedtelesis.co.nz>
From: Ying Xue <ying.xue@windriver.com>
Message-ID: <2830aab3-3fa9-36d2-5646-d5e4672ae263@windriver.com>
Date: Wed, 22 May 2019 15:47:46 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190520034536.22782-1-chris.packham@alliedtelesis.co.nz>
Content-Language: en-US
X-Originating-IP: [128.224.155.90]
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: windriver.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
X-Headers-End: 1hTM8b-005Xk9-9i
Subject: Re: [tipc-discussion] [PATCH v2] tipc: Avoid copying bytes beyond
 the supplied data
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
Cc: netdev@vger.kernel.org, tipc-discussion@lists.sourceforge.net,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: tipc-discussion-bounces@lists.sourceforge.net

On 5/20/19 11:45 AM, Chris Packham wrote:
> TLV_SET is called with a data pointer and a len parameter that tells us
> how many bytes are pointed to by data. When invoking memcpy() we need
> to careful to only copy len bytes.
> 
> Previously we would copy TLV_LENGTH(len) bytes which would copy an extra
> 4 bytes past the end of the data pointer which newer GCC versions
> complain about.
> 
>  In file included from test.c:17:
>  In function 'TLV_SET',
>      inlined from 'test' at test.c:186:5:
>  /usr/include/linux/tipc_config.h:317:3:
>  warning: 'memcpy' forming offset [33, 36] is out of the bounds [0, 32]
>  of object 'bearer_name' with type 'char[32]' [-Warray-bounds]
>      memcpy(TLV_DATA(tlv_ptr), data, tlv_len);
>      ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
>  test.c: In function 'test':
>  test.c::161:10: note:
>  'bearer_name' declared here
>      char bearer_name[TIPC_MAX_BEARER_NAME];
>           ^~~~~~~~~~~
> 
> We still want to ensure any padding bytes at the end are initialised, do
> this with a explicit memset() rather than copy bytes past the end of
> data. Apply the same logic to TCM_SET.
> 
> Signed-off-by: Chris Packham <chris.packham@alliedtelesis.co.nz>

Acked-by: Ying Xue <ying.xue@windriver.com>


But please make the same changes in usr/include/linux/tipc_config.h

> ---
> 
> Changes in v2:
> - Ensure padding bytes are initialised in both TLV_SET and TCM_SET
> 
>  include/uapi/linux/tipc_config.h | 10 +++++++---
>  1 file changed, 7 insertions(+), 3 deletions(-)
> 
> diff --git a/include/uapi/linux/tipc_config.h b/include/uapi/linux/tipc_config.h
> index 4b2c93b1934c..4955e1a9f1bc 100644
> --- a/include/uapi/linux/tipc_config.h
> +++ b/include/uapi/linux/tipc_config.h
> @@ -307,8 +307,10 @@ static inline int TLV_SET(void *tlv, __u16 type, void *data, __u16 len)
>  	tlv_ptr = (struct tlv_desc *)tlv;
>  	tlv_ptr->tlv_type = htons(type);
>  	tlv_ptr->tlv_len  = htons(tlv_len);
> -	if (len && data)
> -		memcpy(TLV_DATA(tlv_ptr), data, tlv_len);
> +	if (len && data) {
> +		memcpy(TLV_DATA(tlv_ptr), data, len);
> +		memset(TLV_DATA(tlv_ptr) + len, 0, TLV_SPACE(len) - tlv_len);
> +	}
>  	return TLV_SPACE(len);
>  }
>  
> @@ -405,8 +407,10 @@ static inline int TCM_SET(void *msg, __u16 cmd, __u16 flags,
>  	tcm_hdr->tcm_len   = htonl(msg_len);
>  	tcm_hdr->tcm_type  = htons(cmd);
>  	tcm_hdr->tcm_flags = htons(flags);
> -	if (data_len && data)
> +	if (data_len && data) {
>  		memcpy(TCM_DATA(msg), data, data_len);
> +		memset(TCM_DATA(msg) + data_len, 0, TCM_SPACE(data_len) - msg_len);
> +	}
>  	return TCM_SPACE(data_len);
>  }
>  
> 


_______________________________________________
tipc-discussion mailing list
tipc-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/tipc-discussion
